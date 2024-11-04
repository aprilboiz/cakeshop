package com.swtest.cakeshop.utils;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.nio.file.Path;
import java.nio.file.Paths;

@Service
public class ImageUtils {
    @Value("${server.base.url}")
    private String serverBaseUrl;

    public String convertPathToUrl(String imagePath) {
        // Extract the file name from the path and create a URL
        Path path = Paths.get(imagePath);
        String fileName = path.getFileName().toString();
        return serverBaseUrl + "/images/" + fileName;
    }
}
