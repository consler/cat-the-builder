.class public Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "MainActivityDialogFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;",
        "Landroidx/appcompat/app/AppCompatDialogFragment;",
        "()V",
        "presenter",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;",
        "getPresenter",
        "()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;",
        "setPresenter",
        "(Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;)V",
        "onActivityCreated",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field public presenter:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;->presenter:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    .line 32
    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;->setPresenter(Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;)V

    return-void
.end method

.method public final setPresenter(Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;->presenter:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    return-void
.end method
