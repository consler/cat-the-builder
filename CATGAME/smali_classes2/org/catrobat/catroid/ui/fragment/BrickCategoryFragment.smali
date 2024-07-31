.class public final Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;
.super Landroidx/fragment/app/ListFragment;
.source "BrickCategoryFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$OnCategorySelectedListener;,
        Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 )2\u00020\u0001:\u0002)*B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J&\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0018\u001a\u00020\u000cH\u0016J\u0008\u0010\u0019\u001a\u00020\u000cH\u0016J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u000cH\u0016J\u0010\u0010\u001f\u001a\u00020\u000c2\u0006\u0010 \u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020\u000cH\u0016J\u0008\u0010#\u001a\u00020\u000cH\u0016J\u0008\u0010$\u001a\u00020\u001bH\u0002J\u000e\u0010%\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020\u0008J\u0008\u0010\'\u001a\u00020\u000cH\u0002J\u0008\u0010(\u001a\u00020\u000cH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;",
        "Landroidx/fragment/app/ListFragment;",
        "()V",
        "adapter",
        "Lorg/catrobat/catroid/ui/adapter/BrickCategoryAdapter;",
        "previousActionBarTitle",
        "",
        "scriptFragment",
        "Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$OnCategorySelectedListener;",
        "viewSwitchLock",
        "Ljava/util/concurrent/locks/Lock;",
        "onAttach",
        "",
        "context",
        "Landroid/content/Context;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDestroy",
        "onDetach",
        "onOptionsItemSelected",
        "",
        "item",
        "Landroid/view/MenuItem;",
        "onPause",
        "onPrepareOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "onResume",
        "onStart",
        "onlyBeginnerBricks",
        "setOnCategorySelectedListener",
        "listener",
        "setUpActionBar",
        "setupBrickCategories",
        "Companion",
        "OnCategorySelectedListener",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final BRICK_CATEGORY_FRAGMENT_TAG:Ljava/lang/String; = "brick_category_fragment"

.field public static final Companion:Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$Companion;


# instance fields
.field private adapter:Lorg/catrobat/catroid/ui/adapter/BrickCategoryAdapter;

.field private previousActionBarTitle:Ljava/lang/CharSequence;

.field private scriptFragment:Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$OnCategorySelectedListener;

.field private final viewSwitchLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->Companion:Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    .line 58
    new-instance v0, Lorg/catrobat/catroid/ui/ViewSwitchLock;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/ViewSwitchLock;-><init>()V

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->viewSwitchLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;)Lorg/catrobat/catroid/ui/adapter/BrickCategoryAdapter;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;

    .line 54
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->adapter:Lorg/catrobat/catroid/ui/adapter/BrickCategoryAdapter;

    return-object v0
.end method

.method public static final synthetic access$getScriptFragment$p(Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;)Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$OnCategorySelectedListener;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;

    .line 54
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->scriptFragment:Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$OnCategorySelectedListener;

    return-object v0
.end method

.method public static final synthetic access$getViewSwitchLock$p(Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;

    .line 54
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->viewSwitchLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public static final synthetic access$setAdapter$p(Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;Lorg/catrobat/catroid/ui/adapter/BrickCategoryAdapter;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/ui/adapter/BrickCategoryAdapter;

    .line 54
    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->adapter:Lorg/catrobat/catroid/ui/adapter/BrickCategoryAdapter;

    return-void
.end method

.method public static final synthetic access$setScriptFragment$p(Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$OnCategorySelectedListener;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$OnCategorySelectedListener;

    .line 54
    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->scriptFragment:Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$OnCategorySelectedListener;

    return-void
.end method

.method private final onlyBeginnerBricks()Z
    .locals 3

    .line 68
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "accessibility_beginner_bricks"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final setUpActionBar()V
    .locals 3

    .line 137
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 138
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-nez v1, :cond_2

    move-object v0, v2

    :cond_2
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->previousActionBarTitle:Ljava/lang/CharSequence;

    .line 139
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v0

    :goto_1
    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_5

    const v1, 0x7f1201d2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 140
    :cond_5
    return-void
.end method

.method private final setupBrickCategories()V
    .locals 5

    .line 144
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "requireActivity().layoutInflater"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 147
    .local v1, "categories":Ljava/util/List;
    const v2, 0x7f0d0050

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v4, "inflater.inflate(R.layou\u2026gory_recently_used, null)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->isEmroiderySharedPreferenceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    const v2, 0x7f0d0047

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v4, "inflater.inflate(R.layou\u2026ategory_embroidery, null)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->isMindstormsNXTSharedPreferenceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    const v2, 0x7f0d004a

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v4, "inflater.inflate(R.layou\u2026_category_lego_nxt, null)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->isMindstormsEV3SharedPreferenceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    const v2, 0x7f0d0049

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v4, "inflater.inflate(R.layou\u2026_category_lego_ev3, null)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_2
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->isDroneSharedPreferenceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    const v2, 0x7f0d0045

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v4, "inflater.inflate(R.layou\u2026ick_category_drone, null)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_3
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->isJSSharedPreferenceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 162
    const v2, 0x7f0d0046

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v4, "inflater.inflate(R.layou\u2026_category_drone_js, null)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_4
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->isArduinoSharedPreferenceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 165
    const v2, 0x7f0d003f

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v4, "inflater.inflate(R.layou\u2026k_category_arduino, null)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_5
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;->isRaspiSharedPreferenceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 168
    const v2, 0x7f0d004f

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v4, "inflater.inflate(R.layou\u2026ick_category_raspi, null)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_6
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->isPhiroSharedPreferenceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 171
    const v2, 0x7f0d004e

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v4, "inflater.inflate(R.layou\u2026ick_category_phiro, null)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_7
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    const-string v4, "ProjectManager.getInstance()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    const-string v4, "ProjectManager.getInstance().currentProject"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->isCastProject()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 174
    const v2, 0x7f0d0041

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v4, "inflater.inflate(R.layou\u2026ategory_chromecast, null)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_8
    const v2, 0x7f0d0048

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v4, "inflater.inflate(R.layou\u2026ick_category_event, null)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    const v2, 0x7f0d0042

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v4, "inflater.inflate(R.layou\u2026k_category_control, null)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    const v2, 0x7f0d004c

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v4, "inflater.inflate(R.layou\u2026ck_category_motion, null)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    const v2, 0x7f0d0051

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v4, "inflater.inflate(R.layou\u2026ick_category_sound, null)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    const v2, 0x7f0d004b

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v4, "inflater.inflate(R.layou\u2026ick_category_looks, null)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->onlyBeginnerBricks()Z

    move-result v2

    if-nez v2, :cond_9

    .line 183
    const v2, 0x7f0d004d

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v4, "inflater.inflate(R.layou\u2026brick_category_pen, null)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_9
    const v2, 0x7f0d0043

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v4, "inflater.inflate(R.layou\u2026rick_category_data, null)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    const v2, 0x7f0d0044

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v4, "inflater.inflate(R.layou\u2026ck_category_device, null)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->onlyBeginnerBricks()Z

    move-result v2

    if-nez v2, :cond_a

    .line 188
    const v2, 0x7f0d0052

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v4, "inflater.inflate(R.layou\u2026category_userbrick, null)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_a
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->isTestSharedPreferenceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 191
    const v2, 0x7f0d0040

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v3, "inflater.inflate(R.layou\u2026ck_category_assert, null)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_b
    new-instance v2, Lorg/catrobat/catroid/ui/adapter/BrickCategoryAdapter;

    invoke-direct {v2, v1}, Lorg/catrobat/catroid/ui/adapter/BrickCategoryAdapter;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->adapter:Lorg/catrobat/catroid/ui/adapter/BrickCategoryAdapter;

    .line 194
    check-cast v2, Landroid/widget/ListAdapter;

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 195
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onAttach(Landroid/content/Context;)V

    .line 199
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt;->removeTabLayout(Landroid/app/Activity;)V

    .line 200
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 71
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 73
    .local v1, "isRestoringPreviouslyDestroyedActivity":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "brick_category_fragment"

    invoke-virtual {v2, v3, v0}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 75
    return-void

    .line 77
    :cond_1
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->setHasOptionsMenu(Z)V

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    const v0, 0x7f0d015d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "rootView":Landroid/view/View;
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->setUpActionBar()V

    .line 83
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/BottomBar;->hideBottomBar(Landroid/app/Activity;)V

    .line 84
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->setupBrickCategories()V

    .line 85
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .line 113
    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onDestroy()V

    .line 114
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    :cond_1
    move-object v0, v2

    .line 115
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    const/4 v1, 0x1

    if-nez v0, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 116
    .local v2, "isRestoringPreviouslyDestroyedActivity":Z
    :goto_0
    if-nez v2, :cond_5

    .line 117
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 118
    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->previousActionBarTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    :cond_4
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/BottomBar;->showBottomBar(Landroid/app/Activity;)V

    .line 120
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/BottomBar;->showPlayButton(Landroid/app/Activity;)V

    .line 122
    :cond_5
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 203
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt;->addTabLayout(Landroid/app/Activity;I)V

    .line 204
    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onDetach()V

    .line 205
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a03b7

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 213
    .local v0, "fragment":Landroidx/fragment/app/Fragment;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0a0597

    if-ne v1, v2, :cond_1

    instance-of v1, v0, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->scriptFragment:Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$OnCategorySelectedListener;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    const v3, 0x7f1201e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, v2}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$OnCategorySelectedListener;->onCategorySelected(Ljava/lang/String;)V

    .line 216
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .locals 1

    .line 107
    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onPause()V

    .line 108
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/BottomBar;->showBottomBar(Landroid/app/Activity;)V

    .line 109
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/BottomBar;->showPlayButton(Landroid/app/Activity;)V

    .line 110
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 126
    const v0, 0x7f0a0337

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "menu.findItem(R.id.delete)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 127
    const v0, 0x7f0a0327

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v2, "menu.findItem(R.id.copy)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 128
    const v0, 0x7f0a0059

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v2, "menu.findItem(R.id.backpack)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 129
    const v0, 0x7f0a031a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v2, "menu.findItem(R.id.comment_in_out)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 130
    const v0, 0x7f0a02e7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v2, "menu.findItem(R.id.catblocks)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 131
    const v0, 0x7f0a02e9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v2, "menu.findItem(R.id.catblocks_reorder_scripts)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 132
    const v0, 0x7f0a0388

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v2, "menu.findItem(R.id.find)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 133
    const v0, 0x7f0a0597

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "menu.findItem(R.id.search)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 134
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 100
    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onResume()V

    .line 101
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/BottomBar;->hideBottomBar(Landroid/app/Activity;)V

    .line 102
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->setupBrickCategories()V

    .line 103
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f1204e3

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/SnackbarUtil;->showHintSnackbar(Landroid/app/Activity;I)V

    .line 104
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 89
    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onStart()V

    .line 90
    nop

    .line 91
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const-string v1, "listView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$onStart$1;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$onStart$1;-><init>(Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;)V

    check-cast v1, Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    return-void
.end method

.method public final setOnCategorySelectedListener(Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$OnCategorySelectedListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$OnCategorySelectedListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->scriptFragment:Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$OnCategorySelectedListener;

    .line 66
    return-void
.end method
