.class Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$3;
.super Ljava/lang/Object;
.source "ProjectAndSceneScreenshotLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->getScreenshotSceneName(Ljava/io/File;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    .line 153
    iput-object p1, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$3;->this$0:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 4
    .param p1, "screenshot2"    # Ljava/io/File;
    .param p2, "screenshot1"    # Ljava/io/File;

    .line 156
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 153
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$3;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
