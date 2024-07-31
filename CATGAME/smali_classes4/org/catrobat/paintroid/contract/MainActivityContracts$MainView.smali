.class public interface abstract Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;
.super Ljava/lang/Object;
.source "MainActivityContracts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/contract/MainActivityContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MainView"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0013\u001a\u00020\u0014H&J\u0008\u0010\u0015\u001a\u00020\u0014H&J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H&J\u0008\u0010\u001a\u001a\u00020\u0014H&J\u0008\u0010\u001b\u001a\u00020\u0014H&J\u0010\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u0007H&J\u0008\u0010\u001e\u001a\u00020\u0014H&J\u0008\u0010\u001f\u001a\u00020\u0014H&J\"\u0010 \u001a\u00020\u00142\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\u0008\u0010$\u001a\u0004\u0018\u00010%H&J+\u0010&\u001a\u00020\u00142\u0006\u0010!\u001a\u00020\"2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020)0(2\u0006\u0010*\u001a\u00020+H&\u00a2\u0006\u0002\u0010,R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\tR\u0012\u0010\u000b\u001a\u00020\u000cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0012\u0010\u000f\u001a\u00020\u0010X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006-"
    }
    d2 = {
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;",
        "",
        "displayMetrics",
        "Landroid/util/DisplayMetrics;",
        "getDisplayMetrics",
        "()Landroid/util/DisplayMetrics;",
        "finishing",
        "",
        "getFinishing",
        "()Z",
        "isKeyboardShown",
        "myContentResolver",
        "Landroid/content/ContentResolver;",
        "getMyContentResolver",
        "()Landroid/content/ContentResolver;",
        "presenter",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;",
        "getPresenter",
        "()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;",
        "enterFullscreen",
        "",
        "exitFullscreen",
        "getUriFromFile",
        "Landroid/net/Uri;",
        "file",
        "Ljava/io/File;",
        "hideContentLoadingProgressBar",
        "hideKeyboard",
        "initializeActionBar",
        "isOpenedFromCatroid",
        "refreshDrawingSurface",
        "showContentLoadingProgressBar",
        "superHandleActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "superHandleRequestPermissionsResult",
        "permissions",
        "",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
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
.method public abstract enterFullscreen()V
.end method

.method public abstract exitFullscreen()V
.end method

.method public abstract getDisplayMetrics()Landroid/util/DisplayMetrics;
.end method

.method public abstract getFinishing()Z
.end method

.method public abstract getMyContentResolver()Landroid/content/ContentResolver;
.end method

.method public abstract getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;
.end method

.method public abstract getUriFromFile(Ljava/io/File;)Landroid/net/Uri;
.end method

.method public abstract hideContentLoadingProgressBar()V
.end method

.method public abstract hideKeyboard()V
.end method

.method public abstract initializeActionBar(Z)V
.end method

.method public abstract isKeyboardShown()Z
.end method

.method public abstract refreshDrawingSurface()V
.end method

.method public abstract showContentLoadingProgressBar()V
.end method

.method public abstract superHandleActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract superHandleRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end method
