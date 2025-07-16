.class public final Lorg/catrobat/paintroid/ui/MainActivityNavigator$setupCatroidMediaGalleryListeners$1;
.super Ljava/lang/Object;
.source "MainActivityNavigator.kt"

# interfaces
.implements Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/ui/MainActivityNavigator;->setupCatroidMediaGalleryListeners(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "org/catrobat/paintroid/ui/MainActivityNavigator$setupCatroidMediaGalleryListeners$1",
        "Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;",
        "bitmapLoadedFromSource",
        "",
        "loadedBitmap",
        "Landroid/graphics/Bitmap;",
        "dismissProgressDialog",
        "showProgressDialog",
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


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/ui/MainActivityNavigator;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/MainActivityNavigator;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator$setupCatroidMediaGalleryListeners$1;->this$0:Lorg/catrobat/paintroid/ui/MainActivityNavigator;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bitmapLoadedFromSource(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "loadedBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator$setupCatroidMediaGalleryListeners$1;->this$0:Lorg/catrobat/paintroid/ui/MainActivityNavigator;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->access$getMainActivity$p(Lorg/catrobat/paintroid/ui/MainActivityNavigator;)Lorg/catrobat/paintroid/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/MainActivity;->getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->bitmapLoadedFromSource(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public dismissProgressDialog()V
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator$setupCatroidMediaGalleryListeners$1;->this$0:Lorg/catrobat/paintroid/ui/MainActivityNavigator;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->dismissIndeterminateProgressDialog()V

    return-void
.end method

.method public showProgressDialog()V
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator$setupCatroidMediaGalleryListeners$1;->this$0:Lorg/catrobat/paintroid/ui/MainActivityNavigator;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->showIndeterminateProgressDialog()V

    return-void
.end method
