.class public final Lorg/catrobat/paintroid/listener/PresenterColorPickedListener;
.super Ljava/lang/Object;
.source "PresenterColorPickedListener.kt"

# interfaces
.implements Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/catrobat/paintroid/listener/PresenterColorPickedListener;",
        "Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;",
        "presenter",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;",
        "(Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;)V",
        "colorChanged",
        "",
        "color",
        "",
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
.field private final presenter:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;)V
    .locals 1

    const-string v0, "presenter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/listener/PresenterColorPickedListener;->presenter:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/catrobat/paintroid/listener/PresenterColorPickedListener;->presenter:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->setBottomNavigationColor(I)V

    return-void
.end method
