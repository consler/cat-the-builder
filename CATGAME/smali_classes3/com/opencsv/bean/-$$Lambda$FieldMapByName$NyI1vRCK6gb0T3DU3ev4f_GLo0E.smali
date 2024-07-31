.class public final synthetic Lcom/opencsv/bean/-$$Lambda$FieldMapByName$NyI1vRCK6gb0T3DU3ev4f_GLo0E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/opencsv/bean/-$$Lambda$FieldMapByName$NyI1vRCK6gb0T3DU3ev4f_GLo0E;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opencsv/bean/-$$Lambda$FieldMapByName$NyI1vRCK6gb0T3DU3ev4f_GLo0E;

    invoke-direct {v0}, Lcom/opencsv/bean/-$$Lambda$FieldMapByName$NyI1vRCK6gb0T3DU3ev4f_GLo0E;-><init>()V

    sput-object v0, Lcom/opencsv/bean/-$$Lambda$FieldMapByName$NyI1vRCK6gb0T3DU3ev4f_GLo0E;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$FieldMapByName$NyI1vRCK6gb0T3DU3ev4f_GLo0E;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/opencsv/bean/RegexToBeanField;

    invoke-static {p1}, Lcom/opencsv/bean/FieldMapByName;->lambda$determineMissingRequiredHeaders$1(Lcom/opencsv/bean/RegexToBeanField;)Z

    move-result p1

    return p1
.end method
