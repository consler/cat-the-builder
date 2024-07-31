.class public final synthetic Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$Vp86sNlB1osvxJVh3oB7rVEc42s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$Vp86sNlB1osvxJVh3oB7rVEc42s;->f$0:Ljava/util/Set;

    iput-object p2, p0, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$Vp86sNlB1osvxJVh3oB7rVEc42s;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$Vp86sNlB1osvxJVh3oB7rVEc42s;->f$0:Ljava/util/Set;

    iget-object v1, p0, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$Vp86sNlB1osvxJVh3oB7rVEc42s;->f$1:Ljava/util/Map;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, v1, p1}, Lcom/opencsv/bean/AbstractMappingStrategy;->lambda$partitionFields$5(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map$Entry;)V

    return-void
.end method
