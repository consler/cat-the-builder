.class Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;
.super Ljava/lang/Object;
.source "ProjectAndSceneScreenshotLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenshotLoader"
.end annotation


# instance fields
.field projectAndSceneScreenshotData:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;

.field final synthetic this$0:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;
    .param p2, "screenshotData"    # Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;

    .line 170
    iput-object p1, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->this$0:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p2, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->projectAndSceneScreenshotData:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;

    .line 172
    return-void
.end method


# virtual methods
.method getScreenshotFile()Ljava/io/File;
    .locals 11

    .line 227
    iget-object v0, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->projectAndSceneScreenshotData:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;

    iget-object v0, v0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;->sceneName:Ljava/lang/String;

    const-string v1, "manual_screenshot.png"

    const-string v2, "automatic_screenshot.png"

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->projectAndSceneScreenshotData:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;

    iget-boolean v0, v0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;->isBackpackScene:Z

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Ljava/io/File;

    .line 230
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v3

    iget-object v3, v3, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackSceneDirectory:Ljava/io/File;

    iget-object v4, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->projectAndSceneScreenshotData:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;

    iget-object v4, v4, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;->sceneName:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 232
    .local v0, "sceneDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v3

    .line 233
    .local v1, "manualScreenshotFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v3

    .line 234
    .local v0, "automaticScreenShotFile":Ljava/io/File;
    goto/16 :goto_1

    .line 235
    .end local v0    # "automaticScreenShotFile":Ljava/io/File;
    .end local v1    # "manualScreenshotFile":Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    iget-object v5, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->projectAndSceneScreenshotData:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;

    iget-object v5, v5, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;->projectName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->projectAndSceneScreenshotData:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;

    iget-object v4, v4, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;->sceneName:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 237
    .local v0, "sceneDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v3

    .line 238
    .restart local v1    # "manualScreenshotFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v3

    .line 239
    .local v0, "automaticScreenShotFile":Ljava/io/File;
    goto :goto_1

    .line 241
    .end local v0    # "automaticScreenShotFile":Ljava/io/File;
    .end local v1    # "manualScreenshotFile":Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v3, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    iget-object v4, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->projectAndSceneScreenshotData:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;

    iget-object v4, v4, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;->projectName:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    .local v0, "projectDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v3

    .line 243
    .restart local v1    # "manualScreenshotFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 244
    .local v3, "automaticScreenShotFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 245
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-static {}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->access$400()[I

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 247
    .local v4, "random":I
    :try_start_0
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/catrobat/catroid/ProjectManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 248
    invoke-static {}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->access$400()[I

    move-result-object v6

    aget v6, v6, v4

    const-string v8, "automatic_screenshot.png"

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 247
    move-object v7, v0

    invoke-static/range {v5 .. v10}, Lorg/catrobat/catroid/io/ResourceImporter;->createImageFileFromResourcesInDirectory(Landroid/content/res/Resources;ILjava/io/File;Ljava/lang/String;D)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_0

    .line 252
    :catch_0
    move-exception v5

    .line 253
    .local v5, "e":Ljava/io/IOException;
    const-class v6, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot create placeholder image for project"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 253
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    .end local v5    # "e":Ljava/io/IOException;
    :goto_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v5

    move-object v0, v2

    .end local v3    # "automaticScreenShotFile":Ljava/io/File;
    .local v2, "automaticScreenShotFile":Ljava/io/File;
    goto :goto_1

    .line 244
    .end local v2    # "automaticScreenShotFile":Ljava/io/File;
    .end local v4    # "random":I
    .restart local v3    # "automaticScreenShotFile":Ljava/io/File;
    :cond_2
    move-object v0, v3

    .line 260
    .end local v3    # "automaticScreenShotFile":Ljava/io/File;
    .local v0, "automaticScreenShotFile":Ljava/io/File;
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 261
    return-object v1

    .line 263
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 264
    return-object v0
.end method

.method public run()V
    .locals 6

    .line 176
    iget-object v0, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->this$0:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    iget-object v1, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->projectAndSceneScreenshotData:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;

    invoke-static {v0, v1}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->access$000(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    return-void

    .line 180
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->getScreenshotFile()Ljava/io/File;

    move-result-object v0

    .line 181
    .local v0, "projectAndSceneImageFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "pathOfScreenshot":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lorg/catrobat/catroid/utils/ImageEditing;->getImageDimensions(Ljava/lang/String;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    if-gez v2, :cond_1

    goto :goto_0

    .line 187
    :cond_1
    iget-object v2, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->this$0:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    invoke-static {v2}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->access$100(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;)I

    move-result v2

    iget-object v3, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->this$0:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    invoke-static {v3}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->access$200(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;)I

    move-result v3

    sget-object v4, Lorg/catrobat/catroid/utils/ImageEditing$ResizeType;->FILL_RECTANGLE_WITH_SAME_ASPECT_RATIO:Lorg/catrobat/catroid/utils/ImageEditing$ResizeType;

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lorg/catrobat/catroid/utils/ImageEditing;->getScaledBitmapFromPath(Ljava/lang/String;IILorg/catrobat/catroid/utils/ImageEditing$ResizeType;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "projectAndSceneImage":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 185
    .end local v2    # "projectAndSceneImage":Landroid/graphics/Bitmap;
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 191
    .restart local v2    # "projectAndSceneImage":Landroid/graphics/Bitmap;
    :goto_1
    const-string v3, ""

    .line 192
    .local v3, "screenshotName":Ljava/lang/String;
    iget-object v4, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->projectAndSceneScreenshotData:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;

    iget-object v4, v4, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;->projectName:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 193
    iget-object v4, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->projectAndSceneScreenshotData:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;

    iget-object v3, v4, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;->projectName:Ljava/lang/String;

    .line 196
    :cond_3
    iget-object v4, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->projectAndSceneScreenshotData:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;

    iget-object v4, v4, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;->sceneName:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 197
    iget-object v4, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->projectAndSceneScreenshotData:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;

    iget-object v4, v4, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;->sceneName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 200
    :cond_4
    iget-object v4, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->this$0:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    invoke-static {v4}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->access$300(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v4, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->this$0:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    iget-object v5, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->projectAndSceneScreenshotData:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;

    invoke-static {v4, v5}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->access$000(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 202
    return-void

    .line 205
    :cond_5
    iget-object v4, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->projectAndSceneScreenshotData:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;

    iget-object v4, v4, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;->imageView:Landroid/widget/ImageView;

    invoke-static {v4}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v4

    .line 207
    .local v4, "uiActivity":Landroid/app/Activity;
    if-eqz v4, :cond_6

    .line 208
    new-instance v5, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader$1;

    invoke-direct {v5, p0, v2}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader$1;-><init>(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 222
    :cond_6
    return-void
.end method
