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
    value = "SMAP\nScopeDefinition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeDefinition.kt\norg/koin/core/scope/ScopeDefinition\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n250#2,2:101\n250#2,2:103\n1642#2,2:105\n*E\n*S KotlinDebug\n*F\n+ 1 ScopeDefinition.kt\norg/koin/core/scope/ScopeDefinition\n*L\n24#1,2:101\n45#1,2:103\n66#1,2:105\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 (2\u00020\u0001:\u0001(B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012 \u0008\u0002\u0010\u0006\u001a\u001a\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00080\u0007j\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0008`\t\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\u0012\u001a\u00020\u0000J\u0013\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0012\u0010\u0017\u001a\u00020\u00182\n\u0010\u0019\u001a\u0006\u0012\u0002\u0008\u00030\u0008J\u001c\u0010\u001a\u001a\u00020\u00182\n\u0010\u0019\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0005JS\u0010\u001c\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0008\"\u0008\u0008\u0000\u0010\u001d*\u00020\u00012\u0006\u0010\u001e\u001a\u0002H\u001d2\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0014\u0008\u0002\u0010\u001f\u001a\u000e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030!\u0018\u00010 2\u0008\u0008\u0002\u0010\"\u001a\u00020\u0005\u00a2\u0006\u0002\u0010#J\r\u0010$\u001a\u00020\u0016H\u0000\u00a2\u0006\u0002\u0008%J\u000e\u0010&\u001a\u00020\u00182\u0006\u0010\'\u001a\u00020\u0000R&\u0010\u0006\u001a\u001a\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00080\u0007j\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0008`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00080\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006)"
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

    .line 97
    const-string v0, "-Root-"

    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->_q(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lorg/koin/core/scope/ScopeDefinition;->ROOT_SCOPE_QUALIFIER:Lorg/koin/core/qualifier/StringQualifier;

    return-void
.end method

.method public constructor <init>(Lorg/koin/core/qualifier/Qualifier;ZLjava/util/HashSet;)V
    .locals 1
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "isRoot"    # Z
    .param p3, "_definitions"    # Ljava/util/HashSet;
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

    .line 14
    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

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

    .line 19
    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/koin/core/scope/ScopeDefinition;->save(Lorg/koin/core/definition/BeanDefinition;Z)V

    return-void
.end method

.method public static synthetic saveNewDefinition$default(Lorg/koin/core/scope/ScopeDefinition;Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;ZILjava/lang/Object;)Lorg/koin/core/definition/BeanDefinition;
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 39
    move-object p2, v0

    check-cast p2, Lorg/koin/core/qualifier/Qualifier;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 40
    move-object p3, v0

    check-cast p3, Ljava/util/List;

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 41
    const/4 p4, 0x0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/koin/core/scope/ScopeDefinition;->saveNewDefinition(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;Z)Lorg/koin/core/definition/BeanDefinition;

    move-result-object p0

    return-object p0
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
    .local v0, "copy":Lorg/koin/core/scope/ScopeDefinition;
    iget-object v1, v0, Lorg/koin/core/scope/ScopeDefinition;->_definitions:Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/koin/core/scope/ScopeDefinition;->getDefinitions()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 92
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 72
    move-object v0, p0

    check-cast v0, Lorg/koin/core/scope/ScopeDefinition;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 73
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    return v2

    .line 75
    :cond_2
    if-eqz p1, :cond_5

    move-object v0, p1

    check-cast v0, Lorg/koin/core/scope/ScopeDefinition;

    .line 77
    iget-object v0, p0, Lorg/koin/core/scope/ScopeDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    move-object v3, p1

    check-cast v3, Lorg/koin/core/scope/ScopeDefinition;

    iget-object v3, v3, Lorg/koin/core/scope/ScopeDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    return v2

    .line 78
    :cond_3
    iget-boolean v0, p0, Lorg/koin/core/scope/ScopeDefinition;->isRoot:Z

    move-object v3, p1

    check-cast v3, Lorg/koin/core/scope/ScopeDefinition;

    iget-boolean v3, v3, Lorg/koin/core/scope/ScopeDefinition;->isRoot:Z

    if-eq v0, v3, :cond_4

    return v2

    .line 80
    :cond_4
    return v1

    .line 75
    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type org.koin.core.scope.ScopeDefinition"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .locals 3

    .line 84
    iget-object v0, p0, Lorg/koin/core/scope/ScopeDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 85
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lorg/koin/core/scope/ScopeDefinition;->isRoot:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 86
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public final isRoot()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lorg/koin/core/scope/ScopeDefinition;->isRoot:Z

    return v0
.end method

.method public final remove(Lorg/koin/core/definition/BeanDefinition;)V
    .locals 1
    .param p1, "beanDefinition"    # Lorg/koin/core/definition/BeanDefinition;
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

    .line 33
    return-void
.end method

.method public final save(Lorg/koin/core/definition/BeanDefinition;Z)V
    .locals 6
    .param p1, "beanDefinition"    # Lorg/koin/core/definition/BeanDefinition;
    .param p2, "forceOverride"    # Z
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

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 101
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/koin/core/definition/BeanDefinition;

    .local v4, "it":Lorg/koin/core/definition/BeanDefinition;
    const/4 v5, 0x0

    .line 24
    .local v5, "$i$a$-firstOrNull-ScopeDefinition$save$current$1":I
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .end local v4    # "it":Lorg/koin/core/definition/BeanDefinition;
    .end local v5    # "$i$a$-firstOrNull-ScopeDefinition$save$current$1":I
    if-nez v4, :cond_2

    goto :goto_0

    .line 102
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    .line 24
    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$firstOrNull":I
    :cond_2
    move-object v0, v3

    check-cast v0, Lorg/koin/core/definition/BeanDefinition;

    .line 25
    .local v0, "current":Lorg/koin/core/definition/BeanDefinition;
    new-instance v1, Lorg/koin/core/error/DefinitionOverrideException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Definition \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' try to override existing definition. Please use override option or check for definition \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/koin/core/error/DefinitionOverrideException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 22
    .end local v0    # "current":Lorg/koin/core/definition/BeanDefinition;
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/koin/core/scope/ScopeDefinition;->_definitions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 26
    :cond_4
    nop

    .line 28
    iget-object v0, p0, Lorg/koin/core/scope/ScopeDefinition;->_definitions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public final saveNewDefinition(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;Z)Lorg/koin/core/definition/BeanDefinition;
    .locals 9
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p3, "secondaryTypes"    # Ljava/util/List;
    .param p4, "override"    # Z
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

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 44
    .local v0, "clazz":Lkotlin/reflect/KClass;
    nop

    .line 45
    invoke-virtual {p0}, Lorg/koin/core/scope/ScopeDefinition;->getDefinitions()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 103
    .local v2, "$i$f$firstOrNull":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lorg/koin/core/definition/BeanDefinition;

    .local v5, "def":Lorg/koin/core/definition/BeanDefinition;
    const/4 v6, 0x0

    .line 45
    .local v6, "$i$a$-firstOrNull-ScopeDefinition$saveNewDefinition$found$1":I
    invoke-virtual {v5, v0, p2, p0}, Lorg/koin/core/definition/BeanDefinition;->is(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/ScopeDefinition;)Z

    move-result v5

    .end local v5    # "def":Lorg/koin/core/definition/BeanDefinition;
    .end local v6    # "$i$a$-firstOrNull-ScopeDefinition$saveNewDefinition$found$1":I
    if-eqz v5, :cond_0

    goto :goto_0

    .line 104
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    .line 44
    .end local v1    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$firstOrNull":I
    :goto_0
    move-object v8, v4

    check-cast v8, Lorg/koin/core/definition/BeanDefinition;

    .line 46
    .local v8, "found":Lorg/koin/core/definition/BeanDefinition;
    if-eqz v8, :cond_3

    .line 47
    if-eqz p4, :cond_2

    .line 48
    invoke-virtual {p0, v8}, Lorg/koin/core/scope/ScopeDefinition;->remove(Lorg/koin/core/definition/BeanDefinition;)V

    goto :goto_1

    .line 50
    :cond_2
    new-instance v1, Lorg/koin/core/error/DefinitionOverrideException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to override existing definition \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' with new definition typed \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/koin/core/error/DefinitionOverrideException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 51
    :cond_3
    :goto_1
    nop

    .line 53
    sget-object v1, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 54
    nop

    .line 55
    nop

    .line 56
    new-instance v2, Lorg/koin/core/scope/ScopeDefinition$saveNewDefinition$beanDefinition$1;

    invoke-direct {v2, p1}, Lorg/koin/core/scope/ScopeDefinition$saveNewDefinition$beanDefinition$1;-><init>(Ljava/lang/Object;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 57
    nop

    .line 58
    new-instance v6, Lorg/koin/core/definition/Options;

    const/4 v2, 0x0

    invoke-direct {v6, v2, p4}, Lorg/koin/core/definition/Options;-><init>(ZZ)V

    .line 59
    if-eqz p3, :cond_4

    move-object v7, p3

    goto :goto_2

    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    move-object v7, v2

    .line 53
    :goto_2
    move-object v2, v0

    move-object v3, p2

    move-object v5, p0

    invoke-virtual/range {v1 .. v7}, Lorg/koin/core/definition/Definitions;->createSingle$koin_core(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/Options;Ljava/util/List;)Lorg/koin/core/definition/BeanDefinition;

    move-result-object v1

    .line 61
    .local v1, "beanDefinition":Lorg/koin/core/definition/BeanDefinition;
    invoke-virtual {p0, v1, p4}, Lorg/koin/core/scope/ScopeDefinition;->save(Lorg/koin/core/definition/BeanDefinition;Z)V

    .line 62
    return-object v1
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
    .locals 7
    .param p1, "scopeDefinition"    # Lorg/koin/core/scope/ScopeDefinition;

    const-string v0, "scopeDefinition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lorg/koin/core/scope/ScopeDefinition;->getDefinitions()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 105
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/koin/core/definition/BeanDefinition;

    .local v4, "it":Lorg/koin/core/definition/BeanDefinition;
    const/4 v5, 0x0

    .line 67
    .local v5, "$i$a$-forEach-ScopeDefinition$unloadDefinitions$1":I
    iget-object v6, p0, Lorg/koin/core/scope/ScopeDefinition;->_definitions:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 68
    .end local v4    # "it":Lorg/koin/core/definition/BeanDefinition;
    .end local v5    # "$i$a$-forEach-ScopeDefinition$unloadDefinitions$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 106
    :cond_0
    nop

    .line 69
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method
