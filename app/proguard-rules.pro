# ProGuard rules for release builds

# Keep the application class names and method names
-keep class com.yourpackage.** {
    *;
}

# Keep your models
-keep class com.yourpackage.models.** {
    *;
}

# Keep your activities
-keep class com.yourpackage.ui.activities.** {
    *;
}

# Add more rules as necessary