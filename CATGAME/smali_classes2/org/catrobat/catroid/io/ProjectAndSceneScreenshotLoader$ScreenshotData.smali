.class Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;
.super Ljava/lang/Object;
.source "ProjectAndSceneScreenshotLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenshotData"
.end annotation


# instance fields
.field public imageView:Landroid/widget/ImageView;

.field public isBackpackScene:Z

.field public projectName:Ljava/lang/String;

.field public sceneName:Ljava/lang/String;

.field final synthetic this$0:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/ImageView;)V
    .locals 0
    .param p2, "projectName"    # Ljava/lang/String;
    .param p3, "sceneName"    # Ljava/lang/String;
    .param p4, "isBackpackScene"    # Z
    .param p5, "imageView"    # Landroid/widget/ImageView;

    .line 64
    iput-object p1, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;->this$0:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;->projectName:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;->sceneName:Ljava/lang/String;

    .line 67
    iput-boolean p4, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;->isBackpackScene:Z

    .line 68
    iput-object p5, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;->imageView:Landroid/widget/ImageView;

    .line 69
    return-void
.end method
