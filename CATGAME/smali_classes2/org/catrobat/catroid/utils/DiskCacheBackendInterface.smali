.class public interface abstract Lorg/catrobat/catroid/utils/DiskCacheBackendInterface;
.super Ljava/lang/Object;
.source "DiskCacheBackendInterface.java"


# virtual methods
.method public abstract delete()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract edit(Ljava/lang/String;)Lorg/catrobat/catroid/utils/DiskCacheEntryEditorInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;)Lorg/catrobat/catroid/utils/DiskCacheSnapshotInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDirectory()Ljava/io/File;
.end method

.method public abstract maxSize()J
.end method

.method public abstract remove(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
