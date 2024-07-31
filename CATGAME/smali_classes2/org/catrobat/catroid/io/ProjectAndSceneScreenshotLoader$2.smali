.class Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$2;
.super Ljava/lang/Object;
.source "ProjectAndSceneScreenshotLoader.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->getScreenshotSceneName(Ljava/io/File;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    .line 133
    iput-object p1, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$2;->this$0:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "f"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 136
    const-string v0, ".png"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
