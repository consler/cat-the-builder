.class public interface abstract Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;
.super Ljava/lang/Object;
.source "MainActivityContracts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/contract/MainActivityContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Interactor"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J:\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H&J:\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00152\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fH&J:\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00152\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fH&\u00a8\u0006\u0019"
    }
    d2 = {
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;",
        "",
        "createFile",
        "",
        "callback",
        "Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;",
        "requestCode",
        "",
        "filename",
        "",
        "loadFile",
        "Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;",
        "uri",
        "Landroid/net/Uri;",
        "context",
        "Landroid/content/Context;",
        "scaling",
        "",
        "commandSerializer",
        "Lorg/catrobat/paintroid/command/serialization/CommandSerializer;",
        "saveCopy",
        "Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;",
        "layerModel",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
        "saveImage",
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
.method public abstract createFile(Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;ILjava/lang/String;)V
.end method

.method public abstract loadFile(Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;ILandroid/net/Uri;Landroid/content/Context;ZLorg/catrobat/paintroid/command/serialization/CommandSerializer;)V
.end method

.method public abstract saveCopy(Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;ILorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/command/serialization/CommandSerializer;Landroid/net/Uri;Landroid/content/Context;)V
.end method

.method public abstract saveImage(Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;ILorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/command/serialization/CommandSerializer;Landroid/net/Uri;Landroid/content/Context;)V
.end method
