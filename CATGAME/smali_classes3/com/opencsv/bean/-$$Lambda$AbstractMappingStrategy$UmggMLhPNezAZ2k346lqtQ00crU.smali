.class public final synthetic Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$UmggMLhPNezAZ2k346lqtQ00crU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Map$Entry;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$UmggMLhPNezAZ2k346lqtQ00crU;->f$0:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$UmggMLhPNezAZ2k346lqtQ00crU;->f$0:Ljava/util/Map$Entry;

    check-cast p1, Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/opencsv/bean/AbstractMappingStrategy;->lambda$null$4(Ljava/util/Map$Entry;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
