.class public final enum Lcom/badlogic/gdx/Files$FileType;
.super Ljava/lang/Enum;
.source "Files.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/Files$FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/Files$FileType;

.field public static final enum Absolute:Lcom/badlogic/gdx/Files$FileType;

.field public static final enum Classpath:Lcom/badlogic/gdx/Files$FileType;

.field public static final enum External:Lcom/badlogic/gdx/Files$FileType;

.field public static final enum Internal:Lcom/badlogic/gdx/Files$FileType;

.field public static final enum Local:Lcom/badlogic/gdx/Files$FileType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 33
    new-instance v0, Lcom/badlogic/gdx/Files$FileType;

    const-string v1, "Classpath"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Files$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/Files$FileType;

    const-string v1, "Internal"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/Files$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/Files$FileType;

    const-string v1, "External"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/Files$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Files$FileType;->External:Lcom/badlogic/gdx/Files$FileType;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/Files$FileType;

    const-string v1, "Absolute"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/badlogic/gdx/Files$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Files$FileType;->Absolute:Lcom/badlogic/gdx/Files$FileType;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/Files$FileType;

    const-string v1, "Local"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/badlogic/gdx/Files$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Files$FileType;->Local:Lcom/badlogic/gdx/Files$FileType;

    .line 29
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/badlogic/gdx/Files$FileType;

    sget-object v7, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    aput-object v7, v1, v2

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->External:Lcom/badlogic/gdx/Files$FileType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Absolute:Lcom/badlogic/gdx/Files$FileType;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/badlogic/gdx/Files$FileType;->$VALUES:[Lcom/badlogic/gdx/Files$FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/Files$FileType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lcom/badlogic/gdx/Files$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/Files$FileType;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/Files$FileType;
    .locals 1

    .line 29
    sget-object v0, Lcom/badlogic/gdx/Files$FileType;->$VALUES:[Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/Files$FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/Files$FileType;

    return-object v0
.end method
