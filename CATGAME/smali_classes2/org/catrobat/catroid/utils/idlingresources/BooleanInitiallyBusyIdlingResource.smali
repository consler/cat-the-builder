.class public Lorg/catrobat/catroid/utils/idlingresources/BooleanInitiallyBusyIdlingResource;
.super Ljava/lang/Object;
.source "BooleanInitiallyBusyIdlingResource.java"

# interfaces
.implements Landroidx/test/espresso/IdlingResource;


# instance fields
.field private volatile callback:Landroidx/test/espresso/IdlingResource$ResourceCallback;

.field private isIdleNow:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/catrobat/catroid/utils/idlingresources/BooleanInitiallyBusyIdlingResource;->isIdleNow:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 37
    const-class v0, Lorg/catrobat/catroid/utils/idlingresources/BooleanInitiallyBusyIdlingResource;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isIdleNow()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/utils/idlingresources/BooleanInitiallyBusyIdlingResource;->isIdleNow:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public registerIdleTransitionCallback(Landroidx/test/espresso/IdlingResource$ResourceCallback;)V
    .locals 0
    .param p1, "callback"    # Landroidx/test/espresso/IdlingResource$ResourceCallback;

    .line 47
    iput-object p1, p0, Lorg/catrobat/catroid/utils/idlingresources/BooleanInitiallyBusyIdlingResource;->callback:Landroidx/test/espresso/IdlingResource$ResourceCallback;

    .line 48
    return-void
.end method

.method public setIdleState(Z)V
    .locals 1
    .param p1, "isIdleNow"    # Z

    .line 51
    iget-object v0, p0, Lorg/catrobat/catroid/utils/idlingresources/BooleanInitiallyBusyIdlingResource;->isIdleNow:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 52
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/utils/idlingresources/BooleanInitiallyBusyIdlingResource;->callback:Landroidx/test/espresso/IdlingResource$ResourceCallback;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/utils/idlingresources/BooleanInitiallyBusyIdlingResource;->callback:Landroidx/test/espresso/IdlingResource$ResourceCallback;

    invoke-interface {v0}, Landroidx/test/espresso/IdlingResource$ResourceCallback;->onTransitionToIdle()V

    .line 55
    :cond_0
    return-void
.end method
