.class public interface abstract Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;
.super Ljava/lang/Object;
.source "LoadImage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/iotasks/LoadImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadImageCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J$\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H&J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;",
        "",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "getContentResolver",
        "()Landroid/content/ContentResolver;",
        "isFinishing",
        "",
        "()Z",
        "onLoadImagePostExecute",
        "",
        "requestCode",
        "",
        "uri",
        "Landroid/net/Uri;",
        "result",
        "Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;",
        "onLoadImagePreExecute",
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getContentResolver()Landroid/content/ContentResolver;
.end method

.method public abstract isFinishing()Z
.end method

.method public abstract onLoadImagePostExecute(ILandroid/net/Uri;Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;)V
.end method

.method public abstract onLoadImagePreExecute(I)V
.end method
