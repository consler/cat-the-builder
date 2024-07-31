.class public final synthetic Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$bF5wJ36p9ZInlcZX5s5q6Kv7jsE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/opencsv/bean/AbstractMappingStrategy;


# direct methods
.method public synthetic constructor <init>(Lcom/opencsv/bean/AbstractMappingStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$bF5wJ36p9ZInlcZX5s5q6Kv7jsE;->f$0:Lcom/opencsv/bean/AbstractMappingStrategy;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$bF5wJ36p9ZInlcZX5s5q6Kv7jsE;->f$0:Lcom/opencsv/bean/AbstractMappingStrategy;

    check-cast p1, Lcom/opencsv/bean/BeanField;

    invoke-virtual {v0, p1}, Lcom/opencsv/bean/AbstractMappingStrategy;->lambda$setErrorLocale$6$AbstractMappingStrategy(Lcom/opencsv/bean/BeanField;)V

    return-void
.end method
