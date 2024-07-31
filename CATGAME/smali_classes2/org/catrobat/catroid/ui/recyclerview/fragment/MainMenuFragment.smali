.class public final Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;
.super Landroidx/fragment/app/Fragment;
.source "MainMenuFragment.kt"

# interfaces
.implements Lorg/catrobat/catroid/ui/recyclerview/ProjectListener;
.implements Landroid/view/View$OnClickListener;
.implements Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;
.implements Lorg/catrobat/catroid/ui/recyclerview/CategoryTitleCallback;
.implements Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainMenuFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainMenuFragment.kt\norg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment\n+ 2 ViewModelStoreOwnerExt.kt\norg/koin/androidx/viewmodel/ext/android/ViewModelStoreOwnerExtKt\n+ 3 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n*L\n1#1,356:1\n42#2,4:357\n25#3,3:361\n25#3,3:364\n25#3,3:367\n*E\n*S KotlinDebug\n*F\n+ 1 MainMenuFragment.kt\norg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment\n*L\n79#1,4:357\n80#1,3:361\n81#1,3:364\n82#1,3:367\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0007\u0018\u0000 S2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0001SB\u0005\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u0014H\u0002J\u0008\u0010/\u001a\u00020-H\u0002J\u0012\u00100\u001a\u00020-2\u0008\u00101\u001a\u0004\u0018\u000102H\u0016J\u0010\u00103\u001a\u00020-2\u0006\u00104\u001a\u00020\u0014H\u0016J\u0010\u00105\u001a\u00020-2\u0006\u00106\u001a\u000207H\u0016J$\u00108\u001a\u0002072\u0006\u00109\u001a\u00020:2\u0008\u0010;\u001a\u0004\u0018\u00010<2\u0008\u00101\u001a\u0004\u0018\u000102H\u0016J\u0008\u0010=\u001a\u00020-H\u0016J\u0010\u0010>\u001a\u00020-2\u0006\u0010?\u001a\u00020\u0014H\u0016J\u0010\u0010@\u001a\u00020-2\u0006\u0010A\u001a\u00020BH\u0016J\u0008\u0010C\u001a\u00020-H\u0016J\u0012\u0010D\u001a\u00020-2\u0008\u0010E\u001a\u0004\u0018\u00010FH\u0016J\u0008\u0010G\u001a\u00020-H\u0016J\u0012\u0010H\u001a\u00020-2\u0008\u0010I\u001a\u0004\u0018\u00010\u0014H\u0002J\u0006\u0010J\u001a\u00020-J\u0016\u0010K\u001a\u00020-2\u000c\u0010L\u001a\u0008\u0012\u0004\u0012\u00020F0MH\u0002J\u0008\u0010N\u001a\u00020-H\u0002J\u0008\u0010O\u001a\u00020-H\u0002J\u0008\u0010P\u001a\u00020-H\u0002J\u0008\u0010Q\u001a\u00020-H\u0002J\u0016\u0010R\u001a\u00020-2\u000c\u0010L\u001a\u0008\u0012\u0004\u0012\u00020F0MH\u0002R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0012\u001a\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010 \u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u0012\u001a\u0004\u0008\"\u0010#R\u000e\u0010%\u001a\u00020&X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\'\u001a\u00020(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010\u0012\u001a\u0004\u0008)\u0010*\u00a8\u0006T"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lorg/catrobat/catroid/ui/recyclerview/ProjectListener;",
        "Landroid/view/View$OnClickListener;",
        "Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;",
        "Lorg/catrobat/catroid/ui/recyclerview/CategoryTitleCallback;",
        "Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;",
        "()V",
        "_binding",
        "Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;",
        "binding",
        "getBinding",
        "()Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;",
        "categoriesAdapter",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;",
        "getCategoriesAdapter",
        "()Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;",
        "categoriesAdapter$delegate",
        "Lkotlin/Lazy;",
        "currentProject",
        "",
        "getCurrentProject",
        "()Ljava/lang/String;",
        "setCurrentProject",
        "(Ljava/lang/String;)V",
        "featuredProjectsAdapter",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter;",
        "getFeaturedProjectsAdapter",
        "()Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter;",
        "featuredProjectsAdapter$delegate",
        "progressBar",
        "Landroid/widget/LinearLayout;",
        "projectManager",
        "Lorg/catrobat/catroid/ProjectManager;",
        "getProjectManager",
        "()Lorg/catrobat/catroid/ProjectManager;",
        "projectManager$delegate",
        "projectsAdapter",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;",
        "viewModel",
        "Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;",
        "getViewModel",
        "()Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;",
        "viewModel$delegate",
        "loadDownloadedProject",
        "",
        "name",
        "loadProjectImage",
        "onActivityCreated",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCategoryTitleClicked",
        "categoryId",
        "onClick",
        "view",
        "Landroid/view/View;",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDestroyView",
        "onFeatureProjectClicked",
        "projectUrl",
        "onLoadFinished",
        "success",
        "",
        "onPause",
        "onProjectClick",
        "projectData",
        "Lorg/catrobat/catroid/common/ProjectData;",
        "onResume",
        "openWebView",
        "url",
        "refreshData",
        "setAndLoadCurrentProject",
        "myProjects",
        "",
        "setupCategoriesRV",
        "setupFeaturedProjectsRV",
        "setupProjectsRV",
        "setupViewVisibility",
        "updateRecyclerview",
        "Companion",
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
.field private static final CURRENT_THUMBNAIL_SIZE:I = 0x1f4

.field public static final Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$Companion;

.field private static final MAX_PROJECTS_NUMBER:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _binding:Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

.field private final categoriesAdapter$delegate:Lkotlin/Lazy;

.field private currentProject:Ljava/lang/String;

.field private final featuredProjectsAdapter$delegate:Lkotlin/Lazy;

.field private progressBar:Landroid/widget/LinearLayout;

.field private final projectManager$delegate:Lkotlin/Lazy;

.field private projectsAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$Companion;

    .line 352
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 70
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 79
    move-object v0, p0

    .line 357
    .local v0, "$this$viewModel$iv":Landroidx/lifecycle/ViewModelStoreOwner;
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lorg/koin/core/qualifier/Qualifier;

    .line 358
    .local v2, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 360
    .local v4, "$i$f$viewModel":I
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$$special$$inlined$viewModel$1;

    invoke-direct {v6, v0, v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$$special$$inlined$viewModel$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v6}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .end local v0    # "$this$viewModel$iv":Landroidx/lifecycle/ViewModelStoreOwner;
    .end local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$viewModel":I
    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 80
    move-object v0, p0

    .line 361
    .local v0, "$this$inject$iv":Landroid/content/ComponentCallbacks;
    move-object v2, v1

    check-cast v2, Lorg/koin/core/qualifier/Qualifier;

    .line 362
    .restart local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .restart local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 363
    .local v4, "$i$f$inject":I
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$$special$$inlined$inject$1;

    invoke-direct {v6, v0, v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$$special$$inlined$inject$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v6}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .end local v0    # "$this$inject$iv":Landroid/content/ComponentCallbacks;
    .end local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$inject":I
    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->featuredProjectsAdapter$delegate:Lkotlin/Lazy;

    .line 81
    move-object v0, p0

    .line 364
    .restart local v0    # "$this$inject$iv":Landroid/content/ComponentCallbacks;
    move-object v2, v1

    check-cast v2, Lorg/koin/core/qualifier/Qualifier;

    .line 365
    .restart local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .restart local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 366
    .restart local v4    # "$i$f$inject":I
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$$special$$inlined$inject$2;

    invoke-direct {v6, v0, v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$$special$$inlined$inject$2;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v6}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .end local v0    # "$this$inject$iv":Landroid/content/ComponentCallbacks;
    .end local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$inject":I
    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->categoriesAdapter$delegate:Lkotlin/Lazy;

    .line 82
    move-object v0, p0

    .line 367
    .restart local v0    # "$this$inject$iv":Landroid/content/ComponentCallbacks;
    move-object v2, v1

    check-cast v2, Lorg/koin/core/qualifier/Qualifier;

    .line 368
    .restart local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 369
    .local v3, "$i$f$inject":I
    sget-object v4, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v5, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$$special$$inlined$inject$3;

    invoke-direct {v5, v0, v2, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$$special$$inlined$inject$3;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v4, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .end local v0    # "$this$inject$iv":Landroid/content/ComponentCallbacks;
    .end local v1    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "$i$f$inject":I
    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->projectManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;)Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;

    .line 70
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getBinding()Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getCategoriesAdapter$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;)Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;

    .line 70
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getCategoriesAdapter()Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getFeaturedProjectsAdapter$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;)Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;

    .line 70
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getFeaturedProjectsAdapter()Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getProgressBar$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;)Landroid/widget/LinearLayout;
    .locals 2
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;

    .line 70
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->progressBar:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const-string v1, "progressBar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setAndLoadCurrentProject(Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;
    .param p1, "myProjects"    # Ljava/util/List;

    .line 70
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->setAndLoadCurrentProject(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setProgressBar$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;
    .param p1, "<set-?>"    # Landroid/widget/LinearLayout;

    .line 70
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->progressBar:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static final synthetic access$updateRecyclerview(Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;
    .param p1, "myProjects"    # Ljava/util/List;

    .line 70
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->updateRecyclerview(Ljava/util/List;)V

    return-void
.end method

.method private final getBinding()Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->_binding:Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getCategoriesAdapter()Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->categoriesAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;

    return-object v0
.end method

.method private final getFeaturedProjectsAdapter()Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->featuredProjectsAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter;

    return-object v0
.end method

.method private final getProjectManager()Lorg/catrobat/catroid/ProjectManager;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->projectManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ProjectManager;

    return-object v0
.end method

.method private final getViewModel()Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;

    return-object v0
.end method

.method private final loadDownloadedProject(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/io/File;

    .line 223
    sget-object v1, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    .line 224
    invoke-static {p1}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->encodeSpecialCharsForFileSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 226
    .local v0, "projectDir":Ljava/io/File;
    nop

    .line 228
    nop

    .line 226
    nop

    .line 227
    nop

    .line 226
    new-instance v1, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;-><init>(Ljava/io/File;Landroid/content/Context;)V

    .line 227
    move-object v2, p0

    check-cast v2, Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->setListener(Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;)Lorg/catrobat/catroid/io/asynctask/ProjectLoader;

    move-result-object v1

    .line 228
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->loadProjectAsync$default(Lorg/catrobat/catroid/io/asynctask/ProjectLoader;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)V

    .line 229
    return-void
.end method

.method private final loadProjectImage()V
    .locals 6

    .line 246
    new-instance v0, Ljava/io/File;

    .line 247
    sget-object v1, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    .line 248
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->currentProject:Ljava/lang/String;

    invoke-static {v2}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->encodeSpecialCharsForFileSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 250
    .local v0, "projectDir":Ljava/io/File;
    new-instance v1, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    const/16 v2, 0x1f4

    invoke-direct {v1, v2, v2}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;-><init>(II)V

    .line 251
    .local v1, "loader":Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;
    nop

    .line 252
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->getScreenshotSceneName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 253
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getBinding()Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    move-result-object v4

    iget-object v4, v4, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->projectImageView:Landroid/widget/ImageView;

    .line 251
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5, v4}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->loadAndShowScreenshot(Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/ImageView;)V

    .line 255
    return-void
.end method

.method private final openWebView(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 344
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 345
    .local v0, "webViewActivityIntent":Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getViewModel()Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->setIsLoading(Z)V

    .line 347
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    .line 348
    return-void
.end method

.method private final setAndLoadCurrentProject(Ljava/util/List;)V
    .locals 3
    .param p1, "myProjects"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/common/ProjectData;",
            ">;)V"
        }
    .end annotation

    .line 208
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/common/ProjectData;

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/ProjectData;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/utils/Utils;->getCurrentProjectName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_0
    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->currentProject:Ljava/lang/String;

    .line 213
    new-instance v0, Ljava/io/File;

    .line 214
    sget-object v1, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    .line 215
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->currentProject:Ljava/lang/String;

    invoke-static {v2}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->encodeSpecialCharsForFileSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    .local v0, "projectDir":Ljava/io/File;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/catrobat/catroid/io/asynctask/ProjectLoaderKt;->loadProject(Ljava/io/File;Landroid/content/Context;)Z

    .line 218
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->loadProjectImage()V

    .line 219
    return-void
.end method

.method private final setupCategoriesRV()V
    .locals 4

    .line 128
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getBinding()Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->categoriesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 129
    nop

    .line 132
    nop

    .line 129
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getCategoriesAdapter()Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$apply":Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;
    const/4 v2, 0x0

    .line 130
    .local v2, "$i$a$-apply-MainMenuFragment$setupCategoriesRV$1":I
    move-object v3, p0

    check-cast v3, Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;->setOnProjectClickCallback(Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;)V

    .line 131
    move-object v3, p0

    check-cast v3, Lorg/catrobat/catroid/ui/recyclerview/CategoryTitleCallback;

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;->setOnCategoryTitleClickCallback(Lorg/catrobat/catroid/ui/recyclerview/CategoryTitleCallback;)V

    .line 132
    nop

    .line 129
    .end local v1    # "$this$apply":Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;
    .end local v2    # "$i$a$-apply-MainMenuFragment$setupCategoriesRV$1":I
    nop

    .line 132
    nop

    .local v0, "it":Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;
    const/4 v1, 0x0

    .line 133
    .local v1, "$i$a$-let-MainMenuFragment$setupCategoriesRV$2":I
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getBinding()Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    move-result-object v2

    iget-object v2, v2, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->categoriesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "binding.categoriesRecyclerView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 134
    nop

    .line 132
    .end local v0    # "it":Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;
    .end local v1    # "$i$a$-let-MainMenuFragment$setupCategoriesRV$2":I
    nop

    .line 135
    return-void
.end method

.method private final setupFeaturedProjectsRV()V
    .locals 6

    .line 175
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getFeaturedProjectsAdapter()Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter;->setCallback(Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;)V

    .line 176
    nop

    .line 183
    nop

    .line 176
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getBinding()Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->featuredProjectsRecyclerView:Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;

    move-object v1, v0

    .local v1, "$this$apply":Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;
    const/4 v2, 0x0

    .line 177
    .local v2, "$i$a$-apply-MainMenuFragment$setupFeaturedProjectsRV$1":I
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->setHasFixedSize(Z)V

    .line 178
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->getItemDecorationCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 179
    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "requireContext()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;-><init>(Landroid/content/Context;)V

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 181
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getFeaturedProjectsAdapter()Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 182
    const/4 v3, 0x0

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    .line 183
    nop

    .line 176
    .end local v1    # "$this$apply":Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;
    .end local v2    # "$i$a$-apply-MainMenuFragment$setupFeaturedProjectsRV$1":I
    nop

    .line 183
    nop

    .local v0, "$this$run":Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;
    const/4 v1, 0x0

    .line 184
    .local v1, "$i$a$-run-MainMenuFragment$setupFeaturedProjectsRV$2":I
    new-instance v2, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {v2}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getBinding()Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    move-result-object v3

    iget-object v3, v3, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->featuredProjectsRecyclerView:Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/PagerSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 185
    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->resumeAutoScroll()V

    .line 186
    nop

    .line 183
    .end local v0    # "$this$run":Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;
    .end local v1    # "$i$a$-run-MainMenuFragment$setupFeaturedProjectsRV$2":I
    nop

    .line 187
    return-void
.end method

.method private final setupProjectsRV()V
    .locals 4

    .line 161
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;

    move-object v1, p0

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/ProjectListener;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;-><init>(Lorg/catrobat/catroid/ui/recyclerview/ProjectListener;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->projectsAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;

    .line 162
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getBinding()Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->myProjectsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .local v0, "$this$apply":Landroidx/recyclerview/widget/RecyclerView;
    const/4 v1, 0x0

    .line 163
    .local v1, "$i$a$-apply-MainMenuFragment$setupProjectsRV$1":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 164
    new-instance v2, Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-direct {v2}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/LinearSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 165
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->projectsAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;

    if-nez v2, :cond_0

    const-string v3, "projectsAdapter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 166
    nop

    .line 162
    .end local v0    # "$this$apply":Landroidx/recyclerview/widget/RecyclerView;
    .end local v1    # "$i$a$-apply-MainMenuFragment$setupProjectsRV$1":I
    nop

    .line 168
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getViewModel()Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->getProjects()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$setupProjectsRV$2;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$setupProjectsRV$2;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 172
    return-void
.end method

.method private final setupViewVisibility()V
    .locals 3

    .line 138
    nop

    .line 139
    nop

    .line 138
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getViewModel()Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->connectionStatusAndFeaturedProjectsAndProjectCategoriesLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$setupViewVisibility$1;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$setupViewVisibility$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 158
    return-void
.end method

.method private final updateRecyclerview(Ljava/util/List;)V
    .locals 3
    .param p1, "myProjects"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/common/ProjectData;",
            ">;)V"
        }
    .end annotation

    .line 258
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "projectsAdapter"

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 259
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->projectsAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;->setItems(Ljava/util/List;)V

    goto :goto_0

    .line 261
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    .line 262
    .local v0, "projectsCount":I
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->projectsAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;

    if-nez v2, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;->setItems(Ljava/util/List;)V

    .line 263
    .end local v0    # "projectsCount":I
    :goto_0
    nop

    .line 264
    return-void
.end method


# virtual methods
.method public final getCurrentProject()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->currentProject:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 103
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a054c

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "requireActivity().findViewById(R.id.progress_bar)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->progressBar:Landroid/widget/LinearLayout;

    .line 106
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getViewModel()Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->isLoading()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$onActivityCreated$1;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$onActivityCreated$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 110
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->setupFeaturedProjectsRV()V

    .line 111
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->setupCategoriesRV()V

    .line 112
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->setupViewVisibility()V

    .line 114
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getBinding()Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->editProject:Landroid/widget/ImageView;

    move-object v1, p0

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getBinding()Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->uploadProject:Landroid/widget/ImageView;

    move-object v1, p0

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getBinding()Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->newProjectFloatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v1, p0

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getBinding()Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->myProjectsTextView:Landroid/widget/TextView;

    move-object v1, p0

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getBinding()Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->projectImageView:Landroid/widget/ImageView;

    move-object v1, p0

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getBinding()Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->featuredProjectsTextView:Landroid/widget/TextView;

    move-object v1, p0

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    sget-object v0, Lorg/catrobat/catroid/utils/ProjectDownloadUtil;->INSTANCE:Lorg/catrobat/catroid/utils/ProjectDownloadUtil;

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/utils/ProjectDownloadUtil;->setFragment(Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;)V

    .line 123
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->setupProjectsRV()V

    .line 124
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getViewModel()Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->setIsLoading(Z)V

    .line 125
    return-void
.end method

.method public onCategoryTitleClicked(Ljava/lang/String;)V
    .locals 2
    .param p1, "categoryId"    # Ljava/lang/String;

    const-string v0, "categoryId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://share.catrob.at/pocketcode/#home-projects__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "categoryUrl":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->openWebView(Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 301
    :sswitch_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v0, v2}, Lorg/catrobat/catroid/utils/Utils;->isDefaultProject(Lorg/catrobat/catroid/content/Project;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getBinding()Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    .local v0, "$this$apply":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .line 303
    .local v1, "$i$a$-apply-MainMenuFragment$onClick$1":I
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getBinding()Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const v3, 0x7f120311

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 304
    nop

    .line 302
    .end local v0    # "$this$apply":Landroid/widget/LinearLayout;
    .end local v1    # "$i$a$-apply-MainMenuFragment$onClick$1":I
    nop

    .line 305
    return-void

    .line 308
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getViewModel()Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->setIsLoading(Z)V

    .line 309
    nop

    .line 310
    nop

    .line 309
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    nop

    .line 312
    new-instance v1, Ljava/io/File;

    .line 313
    sget-object v2, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    .line 314
    nop

    .line 315
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lorg/catrobat/catroid/utils/Utils;->getCurrentProjectName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 314
    invoke-static {v3}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->encodeSpecialCharsForFileSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    check-cast v1, Ljava/io/Serializable;

    .line 310
    const-string v2, "projectDir"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(activity, Project\u2026  )\n                    )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    nop

    .line 319
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 298
    :sswitch_1
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;-><init>()V

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :sswitch_2
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getViewModel()Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->setIsLoading(Z)V

    .line 324
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lorg/catrobat/catroid/ui/ProjectListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 328
    :sswitch_3
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getViewModel()Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->setIsLoading(Z)V

    .line 329
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 287
    :sswitch_4
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getViewModel()Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->setIsLoading(Z)V

    .line 288
    new-instance v0, Ljava/io/File;

    .line 289
    sget-object v2, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    .line 290
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->currentProject:Ljava/lang/String;

    invoke-static {v3}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->encodeSpecialCharsForFileSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 288
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 292
    .local v0, "projectDir":Ljava/io/File;
    nop

    .line 294
    nop

    .line 292
    nop

    .line 293
    nop

    .line 292
    new-instance v2, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0, v3}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;-><init>(Ljava/io/File;Landroid/content/Context;)V

    .line 293
    move-object v3, p0

    check-cast v3, Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->setListener(Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;)Lorg/catrobat/catroid/io/asynctask/ProjectLoader;

    move-result-object v2

    .line 294
    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->loadProjectAsync$default(Lorg/catrobat/catroid/io/asynctask/ProjectLoader;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)V

    .line 331
    .end local v0    # "projectDir":Ljava/io/File;
    :goto_0
    nop

    .line 332
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a036d -> :sswitch_4
        0x7f0a0382 -> :sswitch_3
        0x7f0a03e4 -> :sswitch_4
        0x7f0a047d -> :sswitch_2
        0x7f0a0483 -> :sswitch_1
        0x7f0a054f -> :sswitch_4
        0x7f0a0629 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getViewModel()Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->setIsLoading(Z)V

    .line 93
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->_binding:Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    .line 94
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getBinding()Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 98
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 99
    const/4 v0, 0x0

    check-cast v0, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->_binding:Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    .line 100
    return-void
.end method

.method public onFeatureProjectClicked(Ljava/lang/String;)V
    .locals 1
    .param p1, "projectUrl"    # Ljava/lang/String;

    const-string v0, "projectUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->openWebView(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public onLoadFinished(Z)V
    .locals 4
    .param p1, "success"    # Z

    .line 232
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 233
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lorg/catrobat/catroid/ui/ProjectActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 235
    nop

    .line 236
    nop

    .line 234
    const-string v2, "fragmentPosition"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 240
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getViewModel()Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->setIsLoading(Z)V

    .line 241
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f1202ea

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 242
    :goto_0
    nop

    .line 243
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 203
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 204
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getViewModel()Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->unregisterNetworkCallback()V

    .line 205
    return-void
.end method

.method public onProjectClick(Lorg/catrobat/catroid/common/ProjectData;)V
    .locals 5
    .param p1, "projectData"    # Lorg/catrobat/catroid/common/ProjectData;

    .line 267
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getViewModel()Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->setIsLoading(Z)V

    .line 268
    new-instance v0, Ljava/io/File;

    .line 269
    sget-object v2, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    .line 270
    nop

    .line 271
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/ProjectData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->encodeSpecialCharsForFileSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 273
    .local v0, "projectDir":Ljava/io/File;
    nop

    .line 275
    nop

    .line 273
    nop

    .line 274
    nop

    .line 273
    new-instance v2, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0, v3}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;-><init>(Ljava/io/File;Landroid/content/Context;)V

    .line 274
    move-object v3, p0

    check-cast v3, Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->setListener(Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;)Lorg/catrobat/catroid/io/asynctask/ProjectLoader;

    move-result-object v2

    .line 275
    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->loadProjectAsync$default(Lorg/catrobat/catroid/io/asynctask/ProjectLoader;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)V

    .line 276
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 190
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 191
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getViewModel()Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->registerNetworkCallback()V

    .line 192
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getViewModel()Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->setIsLoading(Z)V

    .line 193
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getViewModel()Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->update()V

    .line 194
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "projectName"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "projectName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 197
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->loadDownloadedProject(Ljava/lang/String;)V

    .line 199
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->refreshData()V

    .line 200
    return-void
.end method

.method public final refreshData()V
    .locals 1

    .line 279
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->getViewModel()Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->forceUpdate()V

    .line 280
    return-void
.end method

.method public final setCurrentProject(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->currentProject:Ljava/lang/String;

    return-void
.end method
