.class Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader$1;
.super Ljava/lang/Object;
.source "ProjectAndSceneScreenshotLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;

.field final synthetic val$projectAndSceneImage:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;

    .line 208
    iput-object p1, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader$1;->this$1:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;

    iput-object p2, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader$1;->val$projectAndSceneImage:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 211
    iget-object v0, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader$1;->this$1:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;

    iget-object v0, v0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->this$0:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    iget-object v1, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader$1;->this$1:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;

    iget-object v1, v1, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->projectAndSceneScreenshotData:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;

    invoke-static {v0, v1}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->access$000(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader$1;->val$projectAndSceneImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader$1;->this$1:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;

    iget-object v0, v0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->projectAndSceneScreenshotData:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;

    iget-object v0, v0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader$1;->val$projectAndSceneImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader$1;->this$1:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;

    iget-object v0, v0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->projectAndSceneScreenshotData:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;

    iget-object v0, v0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 219
    :goto_0
    return-void
.end method
