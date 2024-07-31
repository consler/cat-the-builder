.class Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$1;
.super Ljava/util/LinkedHashMap;
.source "ProjectAndSceneScreenshotLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;IFZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;
    .param p2, "x0"    # I
    .param p3, "x1"    # F
    .param p4, "x2"    # Z

    .line 86
    iput-object p1, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$1;->this$0:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .line 92
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-virtual {p0}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$1;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
