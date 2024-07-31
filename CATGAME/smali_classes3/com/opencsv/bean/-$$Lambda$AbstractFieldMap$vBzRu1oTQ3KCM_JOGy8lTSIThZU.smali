.class public final synthetic Lcom/opencsv/bean/-$$Lambda$AbstractFieldMap$vBzRu1oTQ3KCM_JOGy8lTSIThZU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/opencsv/bean/AbstractFieldMap;


# direct methods
.method public synthetic constructor <init>(Lcom/opencsv/bean/AbstractFieldMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/-$$Lambda$AbstractFieldMap$vBzRu1oTQ3KCM_JOGy8lTSIThZU;->f$0:Lcom/opencsv/bean/AbstractFieldMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/opencsv/bean/-$$Lambda$AbstractFieldMap$vBzRu1oTQ3KCM_JOGy8lTSIThZU;->f$0:Lcom/opencsv/bean/AbstractFieldMap;

    check-cast p1, Lcom/opencsv/bean/ComplexFieldMapEntry;

    invoke-virtual {v0, p1}, Lcom/opencsv/bean/AbstractFieldMap;->lambda$setErrorLocale$2$AbstractFieldMap(Lcom/opencsv/bean/ComplexFieldMapEntry;)V

    return-void
.end method
