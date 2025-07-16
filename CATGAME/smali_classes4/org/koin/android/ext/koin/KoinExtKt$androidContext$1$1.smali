.class final Lorg/koin/android/ext/koin/KoinExtKt$androidContext$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KoinExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/android/ext/koin/KoinExtKt$androidContext$1;->invoke(Lorg/koin/core/module/Module;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/koin/core/scope/Scope;",
        "Lorg/koin/core/parameter/DefinitionParameters;",
        "Landroid/app/Application;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroid/app/Application;",
        "Lorg/koin/core/scope/Scope;",
        "it",
        "Lorg/koin/core/parameter/DefinitionParameters;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/koin/android/ext/koin/KoinExtKt$androidContext$1;


# direct methods
.method constructor <init>(Lorg/koin/android/ext/koin/KoinExtKt$androidContext$1;)V
    .locals 0

    iput-object p1, p0, Lorg/koin/android/ext/koin/KoinExtKt$androidContext$1$1;->this$0:Lorg/koin/android/ext/koin/KoinExtKt$androidContext$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Landroid/app/Application;
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "it"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lorg/koin/android/ext/koin/KoinExtKt$androidContext$1$1;->this$0:Lorg/koin/android/ext/koin/KoinExtKt$androidContext$1;

    iget-object p1, p1, Lorg/koin/android/ext/koin/KoinExtKt$androidContext$1;->$androidContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Application;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/DefinitionParameters;

    invoke-virtual {p0, p1, p2}, Lorg/koin/android/ext/koin/KoinExtKt$androidContext$1$1;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Landroid/app/Application;

    move-result-object p1

    return-object p1
.end method
