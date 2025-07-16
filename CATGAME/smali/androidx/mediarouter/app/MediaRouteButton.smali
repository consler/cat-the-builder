.class public Landroidx/mediarouter/app/MediaRouteButton;
.super Landroid/view/View;
.source "MediaRouteButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;,
        Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;,
        Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final CHECKABLE_STATE_SET:[I

.field private static final CHECKED_STATE_SET:[I

.field private static final CHOOSER_FRAGMENT_TAG:Ljava/lang/String; = "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

.field private static final CONNECTION_STATE_CONNECTED:I = 0x2

.field private static final CONNECTION_STATE_CONNECTING:I = 0x1

.field private static final CONNECTION_STATE_DISCONNECTED:I = 0x0

.field private static final CONTROLLER_FRAGMENT_TAG:Ljava/lang/String; = "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

.field private static final TAG:Ljava/lang/String; = "MediaRouteButton"

.field private static sConnectivityReceiver:Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;

.field static final sRemoteIndicatorCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlwaysVisible:Z

.field private mAttachedToWindow:Z

.field private mButtonTint:Landroid/content/res/ColorStateList;

.field private final mCallback:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

.field private mConnectionState:I

.field private mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mRemoteIndicator:Landroid/graphics/drawable/Drawable;

.field mRemoteIndicatorLoader:Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

.field private mRemoteIndicatorResIdToLoad:I

.field private final mRouter:Landroidx/mediarouter/media/MediaRouter;

.field private mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

.field private mUseDynamicGroup:Z

.field private mVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroidx/mediarouter/app/MediaRouteButton;->sRemoteIndicatorCache:Landroid/util/SparseArray;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 131
    sput-object v1, Landroidx/mediarouter/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    new-array v0, v0, [I

    const v1, 0x101009f

    aput v1, v0, v3

    .line 136
    sput-object v0, Landroidx/mediarouter/app/MediaRouteButton;->CHECKABLE_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 145
    sget v0, Landroidx/mediarouter/R$attr;->mediaRouteButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/mediarouter/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 149
    invoke-static {p1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->createThemedButtonContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    sget-object p1, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 101
    invoke-static {}, Landroidx/mediarouter/app/MediaRouteDialogFactory;->getDefault()Landroidx/mediarouter/app/MediaRouteDialogFactory;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    const/4 p1, 0x0

    .line 105
    iput p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mVisibility:I

    .line 150
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 151
    sget-object v1, Landroidx/mediarouter/R$styleable;->MediaRouteButton:[I

    invoke-virtual {v0, p2, v1, p3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 153
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->isInEditMode()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 154
    iput-object p3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 155
    iput-object p3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mCallback:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    .line 156
    sget p3, Landroidx/mediarouter/R$styleable;->MediaRouteButton_externalRouteEnabledDrawableStatic:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 158
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    return-void

    .line 161
    :cond_0
    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object p3

    iput-object p3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 162
    new-instance p3, Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    invoke-direct {p3, p0}, Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;-><init>(Landroidx/mediarouter/app/MediaRouteButton;)V

    iput-object p3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mCallback:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    .line 164
    sget-object p3, Landroidx/mediarouter/app/MediaRouteButton;->sConnectivityReceiver:Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;

    if-nez p3, :cond_1

    .line 165
    new-instance p3, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;-><init>(Landroid/content/Context;)V

    sput-object p3, Landroidx/mediarouter/app/MediaRouteButton;->sConnectivityReceiver:Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;

    .line 168
    :cond_1
    sget p3, Landroidx/mediarouter/R$styleable;->MediaRouteButton_mediaRouteButtonTint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mButtonTint:Landroid/content/res/ColorStateList;

    .line 169
    sget p3, Landroidx/mediarouter/R$styleable;->MediaRouteButton_android_minWidth:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mMinWidth:I

    .line 171
    sget p3, Landroidx/mediarouter/R$styleable;->MediaRouteButton_android_minHeight:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mMinHeight:I

    .line 174
    sget p3, Landroidx/mediarouter/R$styleable;->MediaRouteButton_externalRouteEnabledDrawableStatic:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 176
    sget v0, Landroidx/mediarouter/R$styleable;->MediaRouteButton_externalRouteEnabledDrawable:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorResIdToLoad:I

    .line 178
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    iget p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorResIdToLoad:I

    if-eqz p2, :cond_2

    .line 181
    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->sRemoteIndicatorCache:Landroid/util/SparseArray;

    .line 182
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz p2, :cond_2

    .line 184
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/mediarouter/app/MediaRouteButton;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    :cond_2
    iget-object p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_5

    if-eqz p3, :cond_4

    .line 189
    sget-object p2, Landroidx/mediarouter/app/MediaRouteButton;->sRemoteIndicatorCache:Landroid/util/SparseArray;

    .line 190
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz p2, :cond_3

    .line 192
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteButton;->setRemoteIndicatorDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 194
    :cond_3
    new-instance p2, Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    .line 195
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, p3, v0}, Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;-><init>(Landroidx/mediarouter/app/MediaRouteButton;ILandroid/content/Context;)V

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorLoader:Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    .line 196
    sget-object p3, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p2, p3, p1}, Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 199
    :cond_4
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteButton;->loadRemoteIndicatorIfNeeded()V

    .line 203
    :cond_5
    :goto_0
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteButton;->updateContentDescription()V

    const/4 p1, 0x1

    .line 204
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteButton;->setClickable(Z)V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    .line 350
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 351
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 352
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 353
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 355
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 2

    .line 341
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 342
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 343
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private loadRemoteIndicatorIfNeeded()V
    .locals 4

    .line 554
    iget v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorResIdToLoad:I

    if-lez v0, :cond_1

    .line 555
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorLoader:Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;->cancel(Z)Z

    .line 558
    :cond_0
    new-instance v0, Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    iget v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorResIdToLoad:I

    .line 559
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;-><init>(Landroidx/mediarouter/app/MediaRouteButton;ILandroid/content/Context;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorLoader:Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    .line 560
    iput v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorResIdToLoad:I

    .line 561
    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method private updateContentDescription()V
    .locals 2

    .line 657
    iget v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mConnectionState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 665
    sget v0, Landroidx/mediarouter/R$string;->mr_cast_button_disconnected:I

    goto :goto_0

    .line 662
    :cond_0
    sget v0, Landroidx/mediarouter/R$string;->mr_cast_button_connected:I

    goto :goto_0

    .line 659
    :cond_1
    sget v0, Landroidx/mediarouter/R$string;->mr_cast_button_connecting:I

    .line 669
    :goto_0
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 401
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 403
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v0

    .line 405
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 406
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->invalidate()V

    :cond_0
    return-void
.end method

.method public enableDynamicGroup()V
    .locals 1

    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mUseDynamicGroup:Z

    return-void
.end method

.method public getDialogFactory()Landroidx/mediarouter/app/MediaRouteDialogFactory;
    .locals 1

    .line 251
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    return-object v0
.end method

.method public getRouteSelector()Landroidx/mediarouter/media/MediaRouteSelector;
    .locals 1

    .line 215
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 444
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 447
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 460
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 462
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 466
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 467
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 468
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mCallback:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1, v2}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 470
    :cond_1
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshRoute()V

    .line 472
    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->sConnectivityReceiver:Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;

    invoke-virtual {v0, p0}, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->registerReceiver(Landroidx/mediarouter/app/MediaRouteButton;)V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 382
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 388
    iget v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mConnectionState:I

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Landroidx/mediarouter/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 390
    :cond_1
    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->CHECKABLE_STATE_SET:[I

    invoke-static {p1, v0}, Landroidx/mediarouter/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    :goto_0
    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 477
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 478
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 479
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mCallback:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 483
    :cond_0
    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->sConnectivityReceiver:Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;

    invoke-virtual {v0, p0}, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->unregisterReceiver(Landroidx/mediarouter/app/MediaRouteButton;)V

    .line 486
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 534
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 536
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getPaddingLeft()I

    move-result v0

    .line 538
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 539
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getPaddingTop()I

    move-result v2

    .line 540
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 542
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 543
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v1, v0

    sub-int/2addr v1, v4

    .line 544
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v3, v2

    sub-int/2addr v3, v5

    .line 545
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 547
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    add-int/2addr v4, v0

    add-int/2addr v5, v2

    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 549
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 491
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 492
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 493
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 494
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 496
    iget v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mMinWidth:I

    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 497
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getPaddingLeft()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 496
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 498
    iget v3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mMinHeight:I

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 499
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    .line 498
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_3

    move v0, v2

    goto :goto_1

    .line 507
    :cond_2
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_3
    :goto_1
    if-eq p2, v5, :cond_4

    if-eq p2, v4, :cond_5

    move v1, v3

    goto :goto_2

    .line 521
    :cond_4
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 529
    :cond_5
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroidx/mediarouter/app/MediaRouteButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public performClick()Z
    .locals 3

    .line 372
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 374
    invoke-virtual {p0, v1}, Landroidx/mediarouter/app/MediaRouteButton;->playSoundEffect(I)V

    .line 376
    :cond_0
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteButton;->loadRemoteIndicatorIfNeeded()V

    .line 377
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->showDialog()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method refreshRoute()V
    .locals 6

    .line 612
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 613
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 614
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getConnectionState()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    .line 619
    :goto_1
    iget v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mConnectionState:I

    if-eq v1, v0, :cond_2

    .line 620
    iput v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mConnectionState:I

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v1, :cond_3

    .line 625
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteButton;->updateContentDescription()V

    .line 626
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshDrawableState()V

    :cond_3
    if-ne v0, v3, :cond_4

    .line 629
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteButton;->loadRemoteIndicatorIfNeeded()V

    .line 632
    :cond_4
    iget-boolean v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v4, :cond_7

    .line 633
    iget-boolean v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAlwaysVisible:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v4, v5, v3}, Landroidx/mediarouter/media/MediaRouter;->isRouteAvailable(Landroidx/mediarouter/media/MediaRouteSelector;I)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    invoke-virtual {p0, v2}, Landroidx/mediarouter/app/MediaRouteButton;->setEnabled(Z)V

    .line 636
    :cond_7
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_b

    .line 637
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_b

    .line 638
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 639
    iget-boolean v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v4, :cond_9

    if-nez v1, :cond_8

    if-ne v0, v3, :cond_b

    .line 641
    :cond_8
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_b

    .line 642
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_3

    :cond_9
    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 647
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 648
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 650
    :cond_a
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    :cond_b
    :goto_3
    return-void
.end method

.method refreshVisibility()V
    .locals 3

    .line 603
    iget v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mVisibility:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAlwaysVisible:Z

    if-nez v0, :cond_0

    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->sConnectivityReceiver:Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;

    .line 604
    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mVisibility:I

    .line 603
    :goto_0
    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 607
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method public setAlwaysVisible(Z)V
    .locals 1

    .line 430
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAlwaysVisible:Z

    if-eq p1, v0, :cond_0

    .line 431
    iput-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAlwaysVisible:Z

    .line 432
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshVisibility()V

    .line 433
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshRoute()V

    :cond_0
    return-void
.end method

.method setCheatSheetEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 366
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Landroidx/mediarouter/R$string;->mr_button_content_description:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 365
    :goto_0
    invoke-static {p0, p1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDialogFactory(Landroidx/mediarouter/app/MediaRouteDialogFactory;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 265
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    return-void

    .line 262
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "factory must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 415
    iput v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorResIdToLoad:I

    .line 416
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteButton;->setRemoteIndicatorDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setRemoteIndicatorDrawableInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 566
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorLoader:Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;->cancel(Z)Z

    .line 570
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 571
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 572
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 575
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mButtonTint:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 576
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 577
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mButtonTint:Landroid/content/res/ColorStateList;

    invoke-static {p1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 579
    :cond_2
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 580
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 581
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 583
    :cond_4
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 585
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshDrawableState()V

    .line 586
    iget-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    .line 587
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_7

    .line 588
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 589
    iget v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mConnectionState:I

    if-ne v1, v0, :cond_5

    .line 590
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 591
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 594
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 595
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 597
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    :cond_7
    :goto_1
    return-void
.end method

.method public setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 229
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 230
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mCallback:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 234
    :cond_0
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mCallback:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, p1, v1}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 238
    :cond_1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 239
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshRoute()V

    :cond_2
    return-void

    .line 226
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVisibility(I)V
    .locals 0

    .line 454
    iput p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mVisibility:I

    .line 455
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshVisibility()V

    return-void
.end method

.method public showDialog()Z
    .locals 5

    .line 300
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAttachedToWindow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 304
    :cond_0
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 309
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 310
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v3

    const-string v4, "MediaRouteButton"

    if-nez v3, :cond_3

    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v2, v3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    .line 324
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v0, "showDialog(): Route controller dialog already showing!"

    .line 325
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 328
    :cond_2
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    .line 329
    invoke-virtual {v1}, Landroidx/mediarouter/app/MediaRouteDialogFactory;->onCreateControllerDialogFragment()Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;

    move-result-object v1

    .line 330
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v1, v3}, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    .line 331
    iget-boolean v3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mUseDynamicGroup:Z

    invoke-virtual {v1, v3}, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->setUseDynamicGroup(Z)V

    .line 333
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 334
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 335
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1

    :cond_3
    :goto_0
    const-string v2, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    .line 311
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v0, "showDialog(): Route chooser dialog already showing!"

    .line 312
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 315
    :cond_4
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    .line 316
    invoke-virtual {v1}, Landroidx/mediarouter/app/MediaRouteDialogFactory;->onCreateChooserDialogFragment()Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;

    move-result-object v1

    .line 317
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v1, v3}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    .line 318
    iget-boolean v3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mUseDynamicGroup:Z

    invoke-virtual {v1, v3}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->setUseDynamicGroup(Z)V

    .line 320
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 321
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 322
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_1
    const/4 v0, 0x1

    return v0

    .line 306
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The activity must be a subclass of FragmentActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 439
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
