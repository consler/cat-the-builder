.class public final synthetic Landroidx/camera/core/impl/Config$-CC;
.super Ljava/lang/Object;
.source "Config.java"


# direct methods
.method public static hasConflict(Landroidx/camera/core/impl/Config$OptionPriority;Landroidx/camera/core/impl/Config$OptionPriority;)Z
    .locals 2
    .param p0, "priority1"    # Landroidx/camera/core/impl/Config$OptionPriority;
    .param p1, "priority2"    # Landroidx/camera/core/impl/Config$OptionPriority;

    .line 280
    sget-object v0, Landroidx/camera/core/impl/Config$OptionPriority;->ALWAYS_OVERRIDE:Landroidx/camera/core/impl/Config$OptionPriority;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Landroidx/camera/core/impl/Config$OptionPriority;->ALWAYS_OVERRIDE:Landroidx/camera/core/impl/Config$OptionPriority;

    if-ne p1, v0, :cond_0

    .line 282
    return v1

    .line 285
    :cond_0
    sget-object v0, Landroidx/camera/core/impl/Config$OptionPriority;->REQUIRED:Landroidx/camera/core/impl/Config$OptionPriority;

    if-ne p0, v0, :cond_1

    sget-object v0, Landroidx/camera/core/impl/Config$OptionPriority;->REQUIRED:Landroidx/camera/core/impl/Config$OptionPriority;

    if-ne p1, v0, :cond_1

    .line 287
    return v1

    .line 290
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
