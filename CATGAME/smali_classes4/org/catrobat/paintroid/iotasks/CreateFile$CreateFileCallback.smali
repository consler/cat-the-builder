.class public interface abstract Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;
.super Ljava/lang/Object;
.source "CreateFile.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/iotasks/CreateFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CreateFileCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u001a\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;",
        "",
        "fileActivity",
        "Landroid/app/Activity;",
        "getFileActivity",
        "()Landroid/app/Activity;",
        "isFinishing",
        "",
        "()Z",
        "onCreateFilePostExecute",
        "",
        "requestCode",
        "",
        "file",
        "Ljava/io/File;",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# virtual methods
.method public abstract getFileActivity()Landroid/app/Activity;
.end method

.method public abstract isFinishing()Z
.end method

.method public abstract onCreateFilePostExecute(ILjava/io/File;)V
.end method
