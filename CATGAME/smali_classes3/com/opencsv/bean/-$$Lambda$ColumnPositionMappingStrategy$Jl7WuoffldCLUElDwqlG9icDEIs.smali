.class public final synthetic Lcom/opencsv/bean/-$$Lambda$ColumnPositionMappingStrategy$Jl7WuoffldCLUElDwqlG9icDEIs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/opencsv/bean/-$$Lambda$ColumnPositionMappingStrategy$Jl7WuoffldCLUElDwqlG9icDEIs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opencsv/bean/-$$Lambda$ColumnPositionMappingStrategy$Jl7WuoffldCLUElDwqlG9icDEIs;

    invoke-direct {v0}, Lcom/opencsv/bean/-$$Lambda$ColumnPositionMappingStrategy$Jl7WuoffldCLUElDwqlG9icDEIs;-><init>()V

    sput-object v0, Lcom/opencsv/bean/-$$Lambda$ColumnPositionMappingStrategy$Jl7WuoffldCLUElDwqlG9icDEIs;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ColumnPositionMappingStrategy$Jl7WuoffldCLUElDwqlG9icDEIs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->lambda$generateHeader$0(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
