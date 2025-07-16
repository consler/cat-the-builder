.class public final Lorg/koin/core/scope/ScopeDefinition;
.super Ljava/lang/Object;
.source "ScopeDefinition.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/koin/core/scope/ScopeDefinition$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScopeDefinition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeDefinition.kt\norg/koin/core/scope/ScopeDefinition\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n43#1,3:105\n46#1,17:110\n250#2,2:101\n250#2,2:103\n250#2,2:108\n1648#2,2:127\n*E\n*S KotlinDebug\n*F\n+ 1 ScopeDefinition.kt\norg/koin/core/scope/ScopeDefinition\n*L\n24#1,2:101\n45#1,2:103\n66#1,2:127\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 (2\u00020\u0001:\u0001(B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012 \u0008\u0002\u0010\u0006\u001a\u001a\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00080\u0007j\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0008`\t\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\u0012\u001a\u00020\u0000J\u0013\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0012\u0010\u0017\u001a\u00020\u00182\n\u0010\u0019\u001a\u0006\u0012\u0002\u0008\u00030\u0008J\u001c\u0010\u001a\u001a\u00020\u00182\n\u0010\u0019\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0005JX\u0010\u001c\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0008\"\n\u0008\u0000\u0010\u001d\u0018\u0001*\u00020\u00012\u0006\u0010\u001e\u001a\u0002H\u001d2\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0014\u0008\u0002\u0010\u001f\u001a\u000e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030!\u0018\u00010 2\u0008\u0008\u0002\u0010\"\u001a\u00020\u0005H\u0086\u0008\u00a2\u0006\u0002\u0010#J\r\u0010$\u001a\u00020\u0016H\u0000\u00a2\u0006\u0002\u0008%J\u000e\u0010&\u001a\u00020\u00182\u0006\u0010\'\u001a\u00020\u0000R&\u0010\u0006\u001a\u001a\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00080\u0007j\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0008`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00080\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006)"
    }
    d2 = {
        "Lorg/koin/core/scope/ScopeDefinition;",
        "",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "isRoot",
        "",
        "_definitions",
        "Ljava/util/HashSet;",
        "Lorg/koin/core/definition/BeanDefinition;",
        "Lkotlin/collections/HashSet;",
        "(Lorg/koin/core/qualifier/Qualifier;ZLjava/util/HashSet;)V",
        "definitions",
        "",
        "getDefinitions",
        "()Ljava/util/Set;",
        "()Z",
        "getQualifier",
        "()Lorg/koin/core/qualifier/Qualifier;",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "remove",
        "",
        "beanDefinition",
        "save",
        "forceOverride",
        "saveNewDefinition",
        "T",
        "instance",
        "secondaryTypes",
        "",
        "Lkotlin/reflect/KClass;",
        "override",
        "(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;Z)Lorg/koin/core/definition/BeanDefinition;",
        "size",
        "size$koin_core",
        "unloadDefinitions",
        "scopeDefinition",
        "Companion",
        "koin-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lorg/koin/core/scope/ScopeDefinition$Companion;

.field public static final ROOT_SCOPE_ID:Ljava/lang/String; = "-Root-"

.field private static final ROOT_SCOPE_QUALIFIER:Lorg/koin/core/qualifier/StringQualifier;


# instance fields
.field private final _definitions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/koin/core/definition/BeanDefinition<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final isRoot:Z

.field private final qualifier:Lorg/koin/core/qualifier/Qualifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/koin/core/scope/ScopeDefinition$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/koin/core/scope/ScopeDefinition$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/koin/core/scope/ScopeDefinition;->Companion:Lorg/koin/core/scope/ScopeDefinition$Companion;

    const-string v0, "-Root-"

    .line 97
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->_q(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lorg/koin/core/scope/ScopeDefinition;->ROOT_SCOPE_QUALIFIER:Lorg/koin/core/qualifier/StringQualifier;

    return-void
.end method

.method public constructor <init>(Lorg/koin/core/qualifier/Qualifier;ZLjava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Z",
            "Ljava/util/HashSet<",
            "Lorg/koin/core/definition/BeanDefinition<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "qualifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_definitions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/koin/core/scope/ScopeDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    iput-boolean p2, p0, Lorg/koin/core/scope/ScopeDefinition;->isRoot:Z

    iput-object p3, p0, Lorg/koin/core/scope/ScopeDefinition;->_definitions:Ljava/util/HashSet;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/koin/core/qualifier/Qualifier;ZLjava/util/HashSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 14
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/koin/core/scope/ScopeDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;ZLjava/util/HashSet;)V

    return-void
.end method

.method public static final synthetic access$getROOT_SCOPE_QUALIFIER$cp()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 14
    sget-object v0, Lorg/koin/core/scope/ScopeDefinition;->ROOT_SCOPE_QUALIFIER:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method

.method public static synthetic save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 19
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/koin/core/scope/ScopeDefinition;->save(Lorg/koin/core/definition/BeanDefinition;Z)V

    return-void
.end method

.method public static synthetic saveNewDefinition$default(Lorg/koin/core/scope/ScopeDefinition;Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;ZILjava/lang/Object;)Lorg/koin/core/definition/BeanDefinition;
    .locals 8

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 39
    move-object p2, v0

    check-cast p2, Lorg/koin/core/qualifier/Qualifier;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p5, 0x4

    if-eqz p2, :cond_1

    .line 40
    move-object p2, v0

    check-cast p2, Ljava/util/List;

    move-object p3, v0

    :cond_1
    and-int/lit8 p2, p5, 0x8

    const/4 p5, 0x0

    if-eqz p2, :cond_2

    move p4, p5

    :cond_2
    const-string p2, "instance"

    .line 41
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "T"

    const/4 p6, 0x4

    .line 105
    invoke-static {p6, p2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p2, Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 107
    invoke-virtual {p0}, Lorg/koin/core/scope/ScopeDefinition;->getDefinitions()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 108
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    move-object v1, p6

    check-cast v1, Lorg/koin/core/definition/BeanDefinition;

    .line 107
    invoke-virtual {v1, v2, v3, p0}, Lorg/koin/core/definition/BeanDefinition;->is(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/ScopeDefinition;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, p6

    .line 106
    :cond_4
    check-cast v0, Lorg/koin/core/definition/BeanDefinition;

    if-eqz v0, :cond_6

    if-eqz p4, :cond_5

    .line 112
    invoke-virtual {p0, v0}, Lorg/koin/core/scope/ScopeDefinition;->remove(Lorg/koin/core/definition/BeanDefinition;)V

    goto :goto_1

    .line 114
    :cond_5
    new-instance p0, Lorg/koin/core/error/DefinitionOverrideException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Trying to override existing definition \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' with new definition typed \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x27

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/koin/core/error/DefinitionOverrideException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 117
    :cond_6
    :goto_1
    sget-object v1, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 120
    new-instance p2, Lorg/koin/core/scope/ScopeDefinition$saveNewDefinition$beanDefinition$1;

    invoke-direct {p2, p1}, Lorg/koin/core/scope/ScopeDefinition$saveNewDefinition$beanDefinition$1;-><init>(Ljava/lang/Object;)V

    move-object v4, p2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 122
    new-instance v6, Lorg/koin/core/definition/Options;

    invoke-direct {v6, p5, p4}, Lorg/koin/core/definition/Options;-><init>(ZZ)V

    if-eqz p3, :cond_7

    move-object v7, p3

    goto :goto_2

    .line 123
    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    move-object v7, p1

    :goto_2
    move-object v5, p0

    .line 117
    invoke-virtual/range {v1 .. v7}, Lorg/koin/core/definition/Definitions;->createSingle(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/Options;Ljava/util/List;)Lorg/koin/core/definition/BeanDefinition;

    move-result-object p1

    .line 125
    invoke-virtual {p0, p1, p4}, Lorg/koin/core/scope/ScopeDefinition;->save(Lorg/koin/core/definition/BeanDefinition;Z)V

    return-object p1
.end method


# virtual methods
.method public final copy()Lorg/koin/core/scope/ScopeDefinition;
    .locals 4

    .line 90
    new-instance v0, Lorg/koin/core/scope/ScopeDefinition;

    iget-object v1, p0, Lorg/koin/core/scope/ScopeDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    iget-boolean v2, p0, Lorg/koin/core/scope/ScopeDefinition;->isRoot:Z

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lorg/koin/core/scope/ScopeDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;ZLjava/util/HashSet;)V

    .line 91
    iget-object v1, v0, Lorg/koin/core/scope/ScopeDefinition;->_definitions:Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/koin/core/scope/ScopeDefinition;->getDefinitions()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 72
    move-object v0, p0

    check-cast v0, Lorg/koin/core/scope/ScopeDefinition;

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return v2

    :cond_2
    if-eqz p1, :cond_5

    .line 75
    check-cast p1, Lorg/koin/core/scope/ScopeDefinition;

    .line 77
    iget-object v1, p0, Lorg/koin/core/scope/ScopeDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    iget-object v3, p1, Lorg/koin/core/scope/ScopeDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_3

    return v2

    .line 78
    :cond_3
    iget-boolean v1, p0, Lorg/koin/core/scope/ScopeDefinition;->isRoot:Z

    iget-boolean p1, p1, Lorg/koin/core/scope/ScopeDefinition;->isRoot:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0

    .line 75
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type org.koin.core.scope.ScopeDefinition"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getDefinitions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/koin/core/definition/BeanDefinition<",
            "*>;>;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lorg/koin/core/scope/ScopeDefinition;->_definitions:Ljava/util/HashSet;

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final getQualifier()Lorg/koin/core/qualifier/Qualifier;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/koin/core/scope/ScopeDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 84
    iget-object v0, p0, Lorg/koin/core/scope/ScopeDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 85
    iget-boolean v1, p0, Lorg/koin/core/scope/ScopeDefinition;->isRoot:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isRoot()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lorg/koin/core/scope/ScopeDefinition;->isRoot:Z

    return v0
.end method

.method public final remove(Lorg/koin/core/definition/BeanDefinition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/definition/BeanDefinition<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "beanDefinition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lorg/koin/core/scope/ScopeDefinition;->_definitions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final save(Lorg/koin/core/definition/BeanDefinition;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/definition/BeanDefinition<",
            "*>;Z)V"
        }
    .end annotation

    const-string v0, "beanDefinition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lorg/koin/core/scope/ScopeDefinition;->getDefinitions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {p1}, Lorg/koin/core/definition/BeanDefinition;->getOptions()Lorg/koin/core/definition/Options;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/definition/Options;->getOverride()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {p0}, Lorg/koin/core/scope/ScopeDefinition;->getDefinitions()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 101
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/koin/core/definition/BeanDefinition;

    .line 24
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    check-cast v0, Lorg/koin/core/definition/BeanDefinition;

    .line 25
    new-instance p2, Lorg/koin/core/error/DefinitionOverrideException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Definition \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' try to override existing definition. Please use override option or check for definition \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/koin/core/error/DefinitionOverrideException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 22
    :cond_3
    :goto_1
    iget-object p2, p0, Lorg/koin/core/scope/ScopeDefinition;->_definitions:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 28
    :cond_4
    iget-object p2, p0, Lorg/koin/core/scope/ScopeDefinition;->_definitions:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic saveNewDefinition(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;Z)Lorg/koin/core/definition/BeanDefinition;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "*>;>;Z)",
            "Lorg/koin/core/definition/BeanDefinition<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "T"

    .line 43
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 45
    invoke-virtual {p0}, Lorg/koin/core/scope/ScopeDefinition;->getDefinitions()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 103
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/koin/core/definition/BeanDefinition;

    .line 45
    invoke-virtual {v3, v2, p2, p0}, Lorg/koin/core/definition/BeanDefinition;->is(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/ScopeDefinition;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 44
    :goto_0
    check-cast v1, Lorg/koin/core/definition/BeanDefinition;

    if-eqz v1, :cond_3

    if-eqz p4, :cond_2

    .line 48
    invoke-virtual {p0, v1}, Lorg/koin/core/scope/ScopeDefinition;->remove(Lorg/koin/core/definition/BeanDefinition;)V

    goto :goto_1

    .line 50
    :cond_2
    new-instance p1, Lorg/koin/core/error/DefinitionOverrideException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Trying to override existing definition \'"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\' with new definition typed \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 p3, 0x27

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/koin/core/error/DefinitionOverrideException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 53
    :cond_3
    :goto_1
    sget-object v1, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 56
    new-instance v0, Lorg/koin/core/scope/ScopeDefinition$saveNewDefinition$beanDefinition$1;

    invoke-direct {v0, p1}, Lorg/koin/core/scope/ScopeDefinition$saveNewDefinition$beanDefinition$1;-><init>(Ljava/lang/Object;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 58
    new-instance v6, Lorg/koin/core/definition/Options;

    const/4 p1, 0x0

    invoke-direct {v6, p1, p4}, Lorg/koin/core/definition/Options;-><init>(ZZ)V

    if-eqz p3, :cond_4

    goto :goto_2

    .line 59
    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    :goto_2
    move-object v7, p3

    move-object v3, p2

    move-object v5, p0

    .line 53
    invoke-virtual/range {v1 .. v7}, Lorg/koin/core/definition/Definitions;->createSingle(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/Options;Ljava/util/List;)Lorg/koin/core/definition/BeanDefinition;

    move-result-object p1

    .line 61
    invoke-virtual {p0, p1, p4}, Lorg/koin/core/scope/ScopeDefinition;->save(Lorg/koin/core/definition/BeanDefinition;Z)V

    return-object p1
.end method

.method public final size$koin_core()I
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/koin/core/scope/ScopeDefinition;->getDefinitions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public final unloadDefinitions(Lorg/koin/core/scope/ScopeDefinition;)V
    .locals 2

    const-string v0, "scopeDefinition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lorg/koin/core/scope/ScopeDefinition;->getDefinitions()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 127
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/koin/core/definition/BeanDefinition;

    .line 67
    iget-object v1, p0, Lorg/koin/core/scope/ScopeDefinition;->_definitions:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
