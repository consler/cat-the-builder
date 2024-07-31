.class public Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "MainActivityDialogFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
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
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
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
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;->presenter:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    if-nez v0, :cond_0

    const-string v1, "presenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 30
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;

    .line 32
    .local v0, "activity":Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;->getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;->presenter:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    .line 33
    return-void

    .line 31
    .end local v0    # "activity":Lorg/catrobat/paintroid/contract/MainActivityContracts$MainView;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.catrobat.paintroid.contract.MainActivityContracts.MainView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setPresenter(Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;->presenter:Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    return-void
.end method
