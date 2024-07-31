.class Lcom/koushikdutta/async/util/FileCache$1;
.super Ljava/lang/Object;
.source "FileCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/util/FileCache;
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
.field final synthetic this$0:Lcom/koushikdutta/async/util/FileCache;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/util/FileCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/koushikdutta/async/util/FileCache;

    .line 228
    iput-object p1, p0, Lcom/koushikdutta/async/util/FileCache$1;->this$0:Lcom/koushikdutta/async/util/FileCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 5
    .param p1, "lhs"    # Ljava/io/File;
    .param p2, "rhs"    # Ljava/io/File;

    .line 231
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 232
    .local v0, "l":J
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 233
    .local v2, "r":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 234
    const/4 v4, -0x1

    return v4

    .line 235
    :cond_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 236
    const/4 v4, 0x1

    return v4

    .line 237
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 228
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/util/FileCache$1;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
