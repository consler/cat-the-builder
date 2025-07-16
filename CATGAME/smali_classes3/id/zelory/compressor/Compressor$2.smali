.class Lid/zelory/compressor/Compressor$2;
.super Ljava/lang/Object;
.source "Compressor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/zelory/compressor/Compressor;->compressToBitmapAsFlowable(Ljava/io/File;)Lio/reactivex/Flowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/Flowable<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lid/zelory/compressor/Compressor;

.field final synthetic val$imageFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lid/zelory/compressor/Compressor;Ljava/io/File;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lid/zelory/compressor/Compressor$2;->this$0:Lid/zelory/compressor/Compressor;

    iput-object p2, p0, Lid/zelory/compressor/Compressor$2;->val$imageFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 90
    :try_start_0
    iget-object v0, p0, Lid/zelory/compressor/Compressor$2;->this$0:Lid/zelory/compressor/Compressor;

    iget-object v1, p0, Lid/zelory/compressor/Compressor$2;->val$imageFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lid/zelory/compressor/Compressor;->compressToBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 92
    invoke-static {v0}, Lio/reactivex/Flowable;->error(Ljava/lang/Throwable;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lid/zelory/compressor/Compressor$2;->call()Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method
