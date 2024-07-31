.class public final synthetic Lcom/opencsv/bean/-$$Lambda$FuzzyMappingStrategy$cVpHXiJDCT24Sl41dNbOkeUzlQU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lorg/apache/commons/text/similarity/LevenshteinDistance;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lorg/apache/commons/text/similarity/LevenshteinDistance;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/-$$Lambda$FuzzyMappingStrategy$cVpHXiJDCT24Sl41dNbOkeUzlQU;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/opencsv/bean/-$$Lambda$FuzzyMappingStrategy$cVpHXiJDCT24Sl41dNbOkeUzlQU;->f$1:Lorg/apache/commons/text/similarity/LevenshteinDistance;

    iput-object p3, p0, Lcom/opencsv/bean/-$$Lambda$FuzzyMappingStrategy$cVpHXiJDCT24Sl41dNbOkeUzlQU;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/opencsv/bean/-$$Lambda$FuzzyMappingStrategy$cVpHXiJDCT24Sl41dNbOkeUzlQU;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/opencsv/bean/-$$Lambda$FuzzyMappingStrategy$cVpHXiJDCT24Sl41dNbOkeUzlQU;->f$1:Lorg/apache/commons/text/similarity/LevenshteinDistance;

    iget-object v2, p0, Lcom/opencsv/bean/-$$Lambda$FuzzyMappingStrategy$cVpHXiJDCT24Sl41dNbOkeUzlQU;->f$2:Ljava/lang/String;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, v1, v2, p1}, Lcom/opencsv/bean/FuzzyMappingStrategy;->lambda$null$1(Ljava/util/List;Lorg/apache/commons/text/similarity/LevenshteinDistance;Ljava/lang/String;Ljava/util/Map$Entry;)V

    return-void
.end method
