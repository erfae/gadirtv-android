.class public final enum Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;
.super Ljava/lang/Enum;
.source "SimpleRatingBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gravity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

.field public static final enum Left:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

.field public static final enum Right:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;


# instance fields
.field public id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    const-string v1, "Left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;->Left:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    .line 2
    new-instance v1, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    const-string v3, "Right"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;->Right:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;->$VALUES:[Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;
    .locals 1

    const-class v0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    return-object p0
.end method

.method public static values()[Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;
    .locals 1

    sget-object v0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;->$VALUES:[Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    invoke-virtual {v0}, [Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    return-object v0
.end method
