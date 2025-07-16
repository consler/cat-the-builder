.class Lid/zelory/compressor/Compressor$1;
.super Ljava/lang/Object;
.source "Compressor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/zelory/compressor/Compressor;->compressToFileAsFlowable(Ljava/io/File;Ljava/lang/String;)Lio/reactivex/Flowable;
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
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lid/zelory/compressor/Compressor;

.field final synthetic val$compressedFileName:Ljava/lang/String;

.field final synthetic val$imageFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lid/zelory/compressor/Compressor;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lid/zelory/compressor/Compressor$1;->this$0:Lid/zelory/compressor/Compressor;

    iput-object p2, p0, Lid/zelory/compressor/Compressor$1;->val$imageFile:Ljava/io/File;

    iput-object p3, p0, Lid/zelory/compressor/Compressor$1;->val$compressedFileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/Flowable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 77
    :try_start_0
    iget-object v0, p0, Lid/zelory/compressor/Compressor$1;->this$0:Lid/zelory/compressor/Compressor;

    iget-object v1, p0, Lid/zelory/compressor/Compressor$1;->val$imageFile:Ljava/io/File;

    iget-object v2, p0, Lid/zelory/compressor/Compressor$1;->val$compressedFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lid/zelory/compressor/Compressor;->compressToFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 79
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

    .line 73
    invoke-virtual {p0}, Lid/zelory/compressor/Compressor$1;->call()Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method
