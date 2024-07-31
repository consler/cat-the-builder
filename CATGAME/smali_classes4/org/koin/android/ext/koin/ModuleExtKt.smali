.class public final Lorg/koin/android/ext/koin/ModuleExtKt;
.super Ljava/lang/Object;
.source "ModuleExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleExt.kt\norg/koin/android/ext/koin/ModuleExtKt\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,46:1\n115#2,4:47\n115#2,4:51\n*E\n*S KotlinDebug\n*F\n+ 1 ModuleExt.kt\norg/koin/android/ext/koin/ModuleExtKt\n*L\n31#1,4:47\n42#1,4:51\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0002\u001a\u00020\u0003*\u00020\u0004\u001a\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0004\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "ERROR_MSG",
        "",
        "androidApplication",
        "Landroid/app/Application;",
        "Lorg/koin/core/scope/Scope;",
        "androidContext",
        "Landroid/content/Context;",
        "koin-android_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ERROR_MSG:Ljava/lang/String; = "Please use androidContext() function in your KoinApplication configuration."


# direct methods
.method public static final androidApplication(Lorg/koin/core/scope/Scope;)Landroid/app/Application;
    .locals 5
    .param p0, "$this$androidApplication"    # Lorg/koin/core/scope/Scope;

    const-string v0, "$this$androidApplication"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    nop

    .line 42
    move-object v0, p0

    .line 51
    .local v0, "this_$iv":Lorg/koin/core/scope/Scope;
    const/4 v1, 0x0

    :try_start_0
    move-object v2, v1

    check-cast v2, Lorg/koin/core/qualifier/Qualifier;

    .line 52
    .local v2, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 54
    .local v3, "$i$f$get":I
    const-class v4, Landroid/app/Application;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    .end local v0    # "this_$iv":Lorg/koin/core/scope/Scope;
    .end local v1    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "$i$f$get":I
    check-cast v4, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    nop

    .line 45
    return-object v4

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/koin/android/error/MissingAndroidContextException;

    const-string v2, "Can\'t resolve Application instance. Please use androidContext() function in your KoinApplication configuration."

    invoke-direct {v1, v2}, Lorg/koin/android/error/MissingAndroidContextException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final androidContext(Lorg/koin/core/scope/Scope;)Landroid/content/Context;
    .locals 5
    .param p0, "$this$androidContext"    # Lorg/koin/core/scope/Scope;

    const-string v0, "$this$androidContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    nop

    .line 31
    move-object v0, p0

    .line 47
    .local v0, "this_$iv":Lorg/koin/core/scope/Scope;
    const/4 v1, 0x0

    :try_start_0
    move-object v2, v1

    check-cast v2, Lorg/koin/core/qualifier/Qualifier;

    .line 48
    .local v2, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 50
    .local v3, "$i$f$get":I
    const-class v4, Landroid/content/Context;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    .end local v0    # "this_$iv":Lorg/koin/core/scope/Scope;
    .end local v1    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "$i$f$get":I
    check-cast v4, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    nop

    .line 34
    return-object v4

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/koin/android/error/MissingAndroidContextException;

    const-string v2, "Can\'t resolve Context instance. Please use androidContext() function in your KoinApplication configuration."

    invoke-direct {v1, v2}, Lorg/koin/android/error/MissingAndroidContextException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method
