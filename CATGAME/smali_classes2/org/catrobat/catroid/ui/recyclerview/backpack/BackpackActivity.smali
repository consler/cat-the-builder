.class public Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackActivity;
.super Lorg/catrobat/catroid/ui/BaseActivity;
.source "BackpackActivity.java"


# static fields
.field public static final EXTRA_FRAGMENT_POSITION:Ljava/lang/String; = "fragmentPosition"

.field public static final FRAGMENT_LOOKS:I = 0x2

.field public static final FRAGMENT_SCENES:I = 0x0

.field public static final FRAGMENT_SCRIPTS:I = 0x4

.field public static final FRAGMENT_SOUNDS:I = 0x3

.field public static final FRAGMENT_SPRITES:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private fragmentPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/BaseActivity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackActivity;->fragmentPosition:I

    return-void
.end method

.method private switchToFragment(I)V
    .locals 4
    .param p1, "fragmentPosition"    # I

    .line 71
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 73
    .local v0, "fragmentTransaction":Landroidx/fragment/app/FragmentTransaction;
    const v1, 0x7f0a03b7

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    .line 95
    return-void

    .line 91
    :cond_0
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;

    invoke-direct {v2}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;-><init>()V

    sget-object v3, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackScriptFragment;->TAG:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 93
    goto :goto_0

    .line 87
    :cond_1
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSoundFragment;

    invoke-direct {v2}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSoundFragment;-><init>()V

    sget-object v3, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSoundFragment;->TAG:Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 89
    goto :goto_0

    .line 83
    :cond_2
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackLookFragment;

    invoke-direct {v2}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackLookFragment;-><init>()V

    sget-object v3, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackLookFragment;->TAG:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 85
    goto :goto_0

    .line 79
    :cond_3
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;

    invoke-direct {v2}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;-><init>()V

    sget-object v3, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSpriteFragment;->TAG:Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 81
    goto :goto_0

    .line 75
    :cond_4
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;

    invoke-direct {v2}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;-><init>()V

    sget-object v3, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackSceneFragment;->TAG:Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 77
    nop

    .line 98
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 99
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f0d0028

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackActivity;->setContentView(I)V

    .line 55
    const v0, 0x7f0a0617

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 56
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f120056

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 57
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string v2, "#83B3C7"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 60
    if-nez p1, :cond_0

    .line 61
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 62
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 63
    const/4 v1, 0x0

    const-string v2, "fragmentPosition"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackActivity;->fragmentPosition:I

    .line 67
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackActivity;->fragmentPosition:I

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackActivity;->switchToFragment(I)V

    .line 68
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 103
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 104
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 109
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 110
    const v1, 0x7f0a03b7

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;

    .line 112
    .local v0, "fragment":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;
    const v1, 0x7f0a05b0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, v0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->hasDetails:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 113
    const/4 v1, 0x1

    return v1
.end method
