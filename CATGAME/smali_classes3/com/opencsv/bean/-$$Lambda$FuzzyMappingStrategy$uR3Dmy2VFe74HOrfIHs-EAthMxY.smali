.class public final synthetic Lcom/opencsv/bean/-$$Lambda$FuzzyMappingStrategy$uR3Dmy2VFe74HOrfIHs-EAthMxY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;


# direct methods
.method public synthetic constructor <init>(Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/-$$Lambda$FuzzyMappingStrategy$uR3Dmy2VFe74HOrfIHs-EAthMxY;->f$0:Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/opencsv/bean/-$$Lambda$FuzzyMappingStrategy$uR3Dmy2VFe74HOrfIHs-EAthMxY;->f$0:Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;

    check-cast p1, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;

    invoke-static {v0, p1}, Lcom/opencsv/bean/FuzzyMappingStrategy;->lambda$captureHeader$3(Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;)Z

    move-result p1

    return p1
.end method
