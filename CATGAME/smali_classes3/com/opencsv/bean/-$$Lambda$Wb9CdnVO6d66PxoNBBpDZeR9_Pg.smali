.class public final synthetic Lcom/opencsv/bean/-$$Lambda$Wb9CdnVO6d66PxoNBBpDZeR9_Pg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/opencsv/bean/-$$Lambda$Wb9CdnVO6d66PxoNBBpDZeR9_Pg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opencsv/bean/-$$Lambda$Wb9CdnVO6d66PxoNBBpDZeR9_Pg;

    invoke-direct {v0}, Lcom/opencsv/bean/-$$Lambda$Wb9CdnVO6d66PxoNBBpDZeR9_Pg;-><init>()V

    sput-object v0, Lcom/opencsv/bean/-$$Lambda$Wb9CdnVO6d66PxoNBBpDZeR9_Pg;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$Wb9CdnVO6d66PxoNBBpDZeR9_Pg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
