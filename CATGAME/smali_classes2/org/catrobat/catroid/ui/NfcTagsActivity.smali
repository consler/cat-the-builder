.class public final Lorg/catrobat/catroid/ui/NfcTagsActivity;
.super Lorg/catrobat/catroid/ui/BaseActivity;
.source "NfcTagsActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0012\u0010\u000b\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0014\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/NfcTagsActivity;",
        "Lorg/catrobat/catroid/ui/BaseActivity;",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateOptionsMenu",
        "",
        "menu",
        "Landroid/view/Menu;",
        "onNewIntent",
        "intent",
        "Landroid/content/Intent;",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f0d0023

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/NfcTagsActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/NfcTagsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "supportFragmentManager.beginTransaction()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .local v0, "fragmentTransaction":Landroidx/fragment/app/FragmentTransaction;
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;

    invoke-direct {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    sget-object v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->TAG:Ljava/lang/String;

    const v3, 0x7f0a0488

    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 38
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 40
    const v1, 0x7f0a0617

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/NfcTagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/NfcTagsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 41
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/NfcTagsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/NfcTagsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    const v2, 0x7f1205b3

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/NfcTagsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/NfcTagsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 55
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 46
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 47
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/NfcTagsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a0488

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 48
    .local v0, "fragment":Landroidx/fragment/app/Fragment;
    instance-of v1, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;

    if-eqz v1, :cond_0

    .line 49
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;

    invoke-virtual {v1, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 51
    :cond_0
    return-void
.end method
