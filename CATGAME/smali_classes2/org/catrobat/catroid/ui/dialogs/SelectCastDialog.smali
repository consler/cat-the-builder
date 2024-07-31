.class public Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SelectCastDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 49
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/cast/CastManager;->setCallback(I)V

    .line 51
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 61
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/cast/CastManager;->getDeviceAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 63
    .local v0, "deviceAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroidx/mediarouter/media/MediaRouter$RouteInfo;>;"
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/cast/CastManager;->currentlyConnecting()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/cast/CastManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d014e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0a02e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 80
    .local v2, "listView":Landroid/widget/ListView;
    const v4, 0x7f0a0370

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 81
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 84
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1201be

    .line 85
    invoke-virtual {p0, v4}, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 86
    invoke-virtual {v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 88
    .local v3, "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v4

    .line 90
    .local v4, "alertDialog":Landroidx/appcompat/app/AlertDialog;
    new-instance v5, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog$2;

    invoke-direct {v5, p0, v4}, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog$2;-><init>(Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog$3;

    invoke-direct {v6, p0, v4, v0}, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog$3;-><init>(Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;Landroidx/appcompat/app/AlertDialog;Landroid/widget/ArrayAdapter;)V

    const-wide/16 v7, 0xbb8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    return-object v4

    .line 64
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "listView":Landroid/widget/ListView;
    .end local v3    # "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    .end local v4    # "alertDialog":Landroidx/appcompat/app/AlertDialog;
    :cond_1
    :goto_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    .local v1, "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f1201cc

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/cast/CastManager;->getSelectedDevice()Lcom/google/android/gms/cast/CastDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 67
    const v2, 0x7f120292

    new-instance v3, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog$1;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog$1;-><init>(Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 55
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/cast/CastManager;->setCallback()V

    .line 56
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 57
    return-void
.end method
