.class public final synthetic Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$A-7Iat49MdHW-iB1DJfCgEoWs68;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/opencsv/bean/AbstractMappingStrategy;

.field public final synthetic f$1:Lorg/apache/commons/collections4/MapIterator;


# direct methods
.method public synthetic constructor <init>(Lcom/opencsv/bean/AbstractMappingStrategy;Lorg/apache/commons/collections4/MapIterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$A-7Iat49MdHW-iB1DJfCgEoWs68;->f$0:Lcom/opencsv/bean/AbstractMappingStrategy;

    iput-object p2, p0, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$A-7Iat49MdHW-iB1DJfCgEoWs68;->f$1:Lorg/apache/commons/collections4/MapIterator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$A-7Iat49MdHW-iB1DJfCgEoWs68;->f$0:Lcom/opencsv/bean/AbstractMappingStrategy;

    iget-object v1, p0, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$A-7Iat49MdHW-iB1DJfCgEoWs68;->f$1:Lorg/apache/commons/collections4/MapIterator;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcom/opencsv/bean/AbstractMappingStrategy;->lambda$ignoreFields$0$AbstractMappingStrategy(Lorg/apache/commons/collections4/MapIterator;Ljava/lang/Class;)V

    return-void
.end method
