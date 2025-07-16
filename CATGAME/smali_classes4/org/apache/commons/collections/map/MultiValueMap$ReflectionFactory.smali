.class Lorg/apache/commons/collections/map/MultiValueMap$ReflectionFactory;
.super Ljava/lang/Object;
.source "MultiValueMap.java"

# interfaces
.implements Lorg/apache/commons/collections/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/MultiValueMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectionFactory"
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput-object p1, p0, Lorg/apache/commons/collections/map/MultiValueMap$ReflectionFactory;->clazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .locals 4

    .line 434
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiValueMap$ReflectionFactory;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 436
    new-instance v1, Lorg/apache/commons/collections/FunctorException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Cannot instantiate class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/commons/collections/map/MultiValueMap$ReflectionFactory;->clazz:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
