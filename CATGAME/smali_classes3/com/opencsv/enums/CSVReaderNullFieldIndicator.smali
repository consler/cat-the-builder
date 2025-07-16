.class public final enum Lcom/opencsv/enums/CSVReaderNullFieldIndicator;
.super Ljava/lang/Enum;
.source "CSVReaderNullFieldIndicator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/opencsv/enums/CSVReaderNullFieldIndicator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

.field public static final enum BOTH:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

.field public static final enum EMPTY_QUOTES:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

.field public static final enum EMPTY_SEPARATORS:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

.field public static final enum NEITHER:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 13
    new-instance v0, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    const-string v1, "EMPTY_SEPARATORS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->EMPTY_SEPARATORS:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    .line 14
    new-instance v1, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    const-string v3, "EMPTY_QUOTES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->EMPTY_QUOTES:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    .line 15
    new-instance v3, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    const-string v5, "BOTH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->BOTH:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    .line 16
    new-instance v5, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    const-string v7, "NEITHER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->NEITHER:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 12
    sput-object v7, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->$VALUES:[Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/opencsv/enums/CSVReaderNullFieldIndicator;
    .locals 1

    .line 12
    const-class v0, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    return-object p0
.end method

.method public static values()[Lcom/opencsv/enums/CSVReaderNullFieldIndicator;
    .locals 1

    .line 12
    sget-object v0, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->$VALUES:[Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    invoke-virtual {v0}, [Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    return-object v0
.end method
