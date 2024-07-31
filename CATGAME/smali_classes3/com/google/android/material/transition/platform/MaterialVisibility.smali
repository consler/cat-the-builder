.class abstract Lcom/google/android/material/transition/platform/MaterialVisibility;
.super Landroid/transition/Visibility;
.source "MaterialVisibility.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;",
        ">",
        "Landroid/transition/Visibility;"
    }
.end annotation


# instance fields
.field private final primaryAnimatorProvider:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private secondaryAnimatorProvider:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;


# direct methods
.method protected constructor <init>(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .locals 1
    .param p2, "secondaryAnimatorProvider"    # Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;",
            ")V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/google/android/material/transition/platform/MaterialVisibility;, "Lcom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    .local p1, "primaryAnimatorProvider":Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;, "TP;"
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialVisibility;->primaryAnimatorProvider:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    .line 47
    iput-object p2, p0, Lcom/google/android/material/transition/platform/MaterialVisibility;->secondaryAnimatorProvider:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    .line 48
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, v0}, Lcom/google/android/material/transition/platform/MaterialVisibility;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 49
    return-void
.end method

.method private createAnimator(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/Animator;
    .locals 4
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "appearing"    # Z

    .line 79
    .local p0, "this":Lcom/google/android/material/transition/platform/MaterialVisibility;, "Lcom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 80
    .local v0, "set":Landroid/animation/AnimatorSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialVisibility;->primaryAnimatorProvider:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    .line 84
    invoke-interface {v2, p1, p2}, Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;->createAppear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialVisibility;->primaryAnimatorProvider:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    .line 85
    invoke-interface {v2, p1, p2}, Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;->createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    :goto_0
    nop

    .line 86
    .local v2, "primaryAnimator":Landroid/animation/Animator;
    if-eqz v2, :cond_1

    .line 87
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/transition/platform/MaterialVisibility;->secondaryAnimatorProvider:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    if-eqz v3, :cond_3

    .line 91
    if-eqz p3, :cond_2

    .line 93
    invoke-interface {v3, p1, p2}, Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;->createAppear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    goto :goto_1

    :cond_2
    nop

    .line 94
    invoke-interface {v3, p1, p2}, Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;->createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    :goto_1
    nop

    .line 95
    .local v3, "secondaryAnimator":Landroid/animation/Animator;
    if-eqz v3, :cond_3

    .line 96
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v3    # "secondaryAnimator":Landroid/animation/Animator;
    :cond_3
    invoke-static {v0, v1}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 101
    return-object v0
.end method


# virtual methods
.method public getPrimaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/google/android/material/transition/platform/MaterialVisibility;, "Lcom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialVisibility;->primaryAnimatorProvider:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    return-object v0
.end method

.method public getSecondaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 1

    .line 58
    .local p0, "this":Lcom/google/android/material/transition/platform/MaterialVisibility;, "Lcom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialVisibility;->secondaryAnimatorProvider:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    return-object v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .line 69
    .local p0, "this":Lcom/google/android/material/transition/platform/MaterialVisibility;, "Lcom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/transition/platform/MaterialVisibility;->createAnimator(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .line 75
    .local p0, "this":Lcom/google/android/material/transition/platform/MaterialVisibility;, "Lcom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/transition/platform/MaterialVisibility;->createAnimator(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public setSecondaryAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .locals 0
    .param p1, "secondaryAnimatorProvider"    # Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    .line 63
    .local p0, "this":Lcom/google/android/material/transition/platform/MaterialVisibility;, "Lcom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialVisibility;->secondaryAnimatorProvider:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    .line 64
    return-void
.end method
