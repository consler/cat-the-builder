.class public Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "MediaRouteChooserDialogFragment.java"


# static fields
.field private static final ARGUMENT_SELECTOR:Ljava/lang/String; = "selector"


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

.field private mUseDynamicGroup:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mUseDynamicGroup:Z

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->setCancelable(Z)V

    .line 51
    return-void
.end method

.method private ensureRouteSelector()V
    .locals 2

    .line 64
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    if-nez v0, :cond_1

    .line 65
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 67
    const-string v1, "selector"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroidx/mediarouter/media/MediaRouteSelector;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v1

    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 69
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    if-nez v1, :cond_1

    .line 70
    sget-object v1, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 73
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    return-void
.end method


# virtual methods
.method public getRouteSelector()Landroidx/mediarouter/media/MediaRouteSelector;
    .locals 1

    .line 59
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->ensureRouteSelector()V

    .line 60
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 155
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 156
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 157
    return-void

    .line 159
    :cond_0
    iget-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mUseDynamicGroup:Z

    if-eqz v1, :cond_1

    .line 160
    check-cast v0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->updateLayout()V

    goto :goto_0

    .line 162
    :cond_1
    check-cast v0, Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->updateLayout()V

    .line 164
    :goto_0
    return-void
.end method

.method public onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/mediarouter/app/MediaRouteChooserDialog;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 138
    new-instance v0, Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-direct {v0, p1}, Landroidx/mediarouter/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 143
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mUseDynamicGroup:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->onCreateDynamicChooserDialog(Landroid/content/Context;)Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    .line 145
    check-cast v0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->getRouteSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/mediarouter/app/MediaRouteChooserDialog;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    .line 148
    check-cast v0, Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->getRouteSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    .line 150
    :goto_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public onCreateDynamicChooserDialog(Landroid/content/Context;)Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 127
    new-instance v0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    invoke-direct {v0, p1}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V
    .locals 3
    .param p1, "selector"    # Landroidx/mediarouter/media/MediaRouteSelector;

    .line 96
    if-eqz p1, :cond_3

    .line 100
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->ensureRouteSelector()V

    .line 101
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 104
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 105
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 106
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->asBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "selector"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 111
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    .line 112
    iget-boolean v2, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mUseDynamicGroup:Z

    if-eqz v2, :cond_1

    .line 113
    check-cast v1, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    invoke-virtual {v1, p1}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    goto :goto_0

    .line 115
    :cond_1
    check-cast v1, Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-virtual {v1, p1}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    .line 119
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_2
    :goto_0
    return-void

    .line 97
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setUseDynamicGroup(Z)V
    .locals 2
    .param p1, "useDynamicGroup"    # Z

    .line 83
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 86
    iput-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mUseDynamicGroup:Z

    .line 87
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This must be called before creating dialog"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
