.class public final synthetic Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$o7zVI-jc3U763P16VepILq4QuSU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/opencsv/bean/AbstractMappingStrategy;

.field public final synthetic f$1:Lorg/apache/commons/collections4/ListValuedMap;


# direct methods
.method public synthetic constructor <init>(Lcom/opencsv/bean/AbstractMappingStrategy;Lorg/apache/commons/collections4/ListValuedMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$o7zVI-jc3U763P16VepILq4QuSU;->f$0:Lcom/opencsv/bean/AbstractMappingStrategy;

    iput-object p2, p0, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$o7zVI-jc3U763P16VepILq4QuSU;->f$1:Lorg/apache/commons/collections4/ListValuedMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$o7zVI-jc3U763P16VepILq4QuSU;->f$0:Lcom/opencsv/bean/AbstractMappingStrategy;

    iget-object v1, p0, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$o7zVI-jc3U763P16VepILq4QuSU;->f$1:Lorg/apache/commons/collections4/ListValuedMap;

    check-cast p1, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    invoke-virtual {v0, v1, p1}, Lcom/opencsv/bean/AbstractMappingStrategy;->lambda$assembleCompleteFieldList$2$AbstractMappingStrategy(Lorg/apache/commons/collections4/ListValuedMap;Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;)V

    return-void
.end method
