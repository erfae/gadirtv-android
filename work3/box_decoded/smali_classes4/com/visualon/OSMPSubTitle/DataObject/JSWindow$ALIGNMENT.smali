.class public final enum Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;
.super Ljava/lang/Enum;
.source "JSWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ALIGNMENT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;

.field public static final enum HORIZONTAL:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;

.field public static final enum VERTICAL:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 32
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;->HORIZONTAL:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;

    new-instance v1, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;

    const-string v3, "VERTICAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;->VERTICAL:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 31
    sput-object v3, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;->$VALUES:[Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;
    .locals 1

    .line 31
    const-class v0, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;
    .locals 1

    .line 31
    sget-object v0, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;->$VALUES:[Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;

    invoke-virtual {v0}, [Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;

    return-object v0
.end method
