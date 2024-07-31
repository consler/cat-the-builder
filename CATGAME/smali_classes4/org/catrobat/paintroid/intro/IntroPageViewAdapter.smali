.class public Lorg/catrobat/paintroid/intro/IntroPageViewAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "IntroPageViewAdapter.java"


# instance fields
.field public layouts:[I


# direct methods
.method public constructor <init>([I)V
    .locals 3
    .param p1, "layouts"    # [I

    .line 33
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 34
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/catrobat/paintroid/intro/IntroPageViewAdapter;->layouts:[I

    .line 35
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 59
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    .line 60
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 61
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/catrobat/paintroid/intro/IntroPageViewAdapter;->layouts:[I

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 42
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lorg/catrobat/paintroid/intro/IntroPageViewAdapter;->layouts:[I

    aget v1, v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 43
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 44
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 54
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
