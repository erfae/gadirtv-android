.class public final enum Lcom/thebuzzmedia/sjxp/rule/IRule$Type;
.super Ljava/lang/Enum;
.source "IRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thebuzzmedia/sjxp/rule/IRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/thebuzzmedia/sjxp/rule/IRule$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

.field public static final enum ATTRIBUTE:Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

.field public static final enum CHARACTER:Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

.field public static final enum TAG:Lcom/thebuzzmedia/sjxp/rule/IRule$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 156
    new-instance v0, Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

    const-string v1, "TAG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/thebuzzmedia/sjxp/rule/IRule$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/thebuzzmedia/sjxp/rule/IRule$Type;->TAG:Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

    .line 161
    new-instance v1, Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

    const-string v3, "ATTRIBUTE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/thebuzzmedia/sjxp/rule/IRule$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/thebuzzmedia/sjxp/rule/IRule$Type;->ATTRIBUTE:Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

    .line 168
    new-instance v3, Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

    const-string v5, "CHARACTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/thebuzzmedia/sjxp/rule/IRule$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/thebuzzmedia/sjxp/rule/IRule$Type;->CHARACTER:Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 147
    sput-object v5, Lcom/thebuzzmedia/sjxp/rule/IRule$Type;->$VALUES:[Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/thebuzzmedia/sjxp/rule/IRule$Type;
    .locals 1

    .line 147
    const-class v0, Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

    return-object p0
.end method

.method public static final values()[Lcom/thebuzzmedia/sjxp/rule/IRule$Type;
    .locals 1

    .line 147
    sget-object v0, Lcom/thebuzzmedia/sjxp/rule/IRule$Type;->$VALUES:[Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

    invoke-virtual {v0}, [Lcom/thebuzzmedia/sjxp/rule/IRule$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

    return-object v0
.end method
