package com.swtest.cakeshop.product.storing;

import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@Service
@PropertySource("classpath:storage.properties")
@NoArgsConstructor
public class StorageService {
    @Value("${image.path}")
    private String uploadImageDir;

    public String storeImage(MultipartFile image) throws IOException {
        // Create the upload directory if it does not exist
        Path uploadPath = Paths.get(uploadImageDir);
        if (!Files.exists(uploadPath)) {
            Files.createDirectories(uploadPath);
        }

        String fileName = System.currentTimeMillis() + "_" + image.getOriginalFilename();
        Path filePath = uploadPath.resolve(fileName);
        Files.write(filePath, image.getBytes());

        return filePath.toString();
    }
}
