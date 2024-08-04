package com.example.springboot.validation;
import java.util.Arrays;

public class FileValidator {


    public boolean isValidFileSize(Long fileSize) {
        return fileSize <= 6 * 1024 * 1024; // 6 MB limit
    }


    private String getFileExtension(String fileName) {
        return fileName.substring(fileName.lastIndexOf(".") + 1);
    }


    public boolean isValidFileType(String fileName, String mimeType) {
        String[] allowedExtensions = {"jpg", "jpeg", "png"};
        String[] allowedMimeTypes = {"image/jpeg", "image/png"};

        String fileExtension = getFileExtension(fileName);
        return Arrays.asList(allowedExtensions).contains(fileExtension) && Arrays.asList(allowedMimeTypes).contains(mimeType);
    }



}
