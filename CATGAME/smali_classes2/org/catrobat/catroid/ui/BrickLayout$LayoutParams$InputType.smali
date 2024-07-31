.class public final enum Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;
.super Ljava/lang/Enum;
.source "BrickLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InputType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;

.field public static final enum NUMBER:Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;

.field public static final enum TEXT:Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 594
    new-instance v0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;

    const-string v1, "NUMBER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;->NUMBER:Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;

    new-instance v0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;

    const-string v1, "TEXT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;->TEXT:Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;

    .line 593
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;

    sget-object v4, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;->NUMBER:Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;->$VALUES:[Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 593
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 593
    const-class v0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;
    .locals 1

    .line 593
    sget-object v0, Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;->$VALUES:[Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/ui/BrickLayout$LayoutParams$InputType;

    return-object v0
.end method
