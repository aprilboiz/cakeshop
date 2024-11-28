package com.swtest.cakeshop.product.category;

import com.swtest.cakeshop.exception.DuplicateException;
import com.swtest.cakeshop.exception.NotFoundException;
import com.swtest.cakeshop.product.category.dto.CategoryRequest;
import com.swtest.cakeshop.product.category.dto.CategoryResponse;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class CategoryService {
    private final CategoryRepository categoryRepository;

    public CategoryService(CategoryRepository categoryRepository){
        this.categoryRepository = categoryRepository;
    }

    public void createCategory(CategoryRequest request){
        String categoryName = request.name();
        Optional<Category> existCategory = this.categoryRepository.findByNameIgnoreCase(categoryName);
        if (existCategory.isPresent()) {
            throw new DuplicateException(String.format("This category '%s' already exists", existCategory));
        }
        Category category = new Category(categoryName);
        this.categoryRepository.save(category);
    }

    public Category findCategoryByName(String name){
        return categoryRepository
                .findByNameIgnoreCase(name)
                .orElseThrow(() -> new NotFoundException(String.format("Category '%s' is not found", name)));
    }

    public CategoryResponse getAllCategories(){
        List<Category> categories = this.categoryRepository.findAll();
        List<String> categoriesNames = categories.stream().map(Category::getName).toList();
        return new CategoryResponse(categoriesNames);
    }
}
