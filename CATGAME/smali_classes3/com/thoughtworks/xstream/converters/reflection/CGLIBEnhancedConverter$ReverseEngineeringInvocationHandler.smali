.class final Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$ReverseEngineeringInvocationHandler;
.super Ljava/lang/Object;
.source "CGLIBEnhancedConverter.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReverseEngineeringInvocationHandler"
.end annotation


# instance fields
.field private final index:Ljava/lang/Integer;

.field private final indexMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(ILjava/util/Map;)V
    .locals 0

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$ReverseEngineeringInvocationHandler;->indexMap:Ljava/util/Map;

    .line 467
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$ReverseEngineeringInvocationHandler;->index:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 471
    iget-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$ReverseEngineeringInvocationHandler;->indexMap:Ljava/util/Map;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$ReverseEngineeringInvocationHandler;->index:Ljava/lang/Integer;

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method
