.class public Lorg/catrobat/catroid/ui/SettingsActivity;
.super Lorg/catrobat/catroid/ui/BaseActivity;
.source "SettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 67
    :cond_0
    invoke-super {p0}, Lorg/catrobat/catroid/ui/BaseActivity;->onBackPressed()V

    .line 69
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f0d01ca

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/SettingsActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;

    invoke-direct {v1}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;-><init>()V

    .line 44
    const v2, 0x7f0a0321

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 47
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 48
    const-string v3, "rollBackToAccessibilityFragment"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;

    invoke-direct {v1}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;-><init>()V

    .line 51
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;->TAG:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 56
    :cond_0
    const v0, 0x7f0a0617

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/SettingsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 57
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 58
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 59
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f12069e

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 60
    return-void
.end method
