.class public final enum Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CustomDialogActions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

.field public static final enum CANCEL:Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

.field public static final enum GO_TO_CHANNEL:Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

.field public static final enum LOGIN:Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

.field public static final enum LOGOUT:Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

.field public static final enum OK:Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

.field public static final enum REFRESH:Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 812
    new-instance v0, Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

    const-string v1, "LOGOUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;->LOGOUT:Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

    new-instance v1, Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

    const-string v3, "LOGIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;->LOGIN:Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

    new-instance v3, Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

    const-string v5, "REFRESH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;->REFRESH:Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

    new-instance v5, Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

    const-string v7, "OK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;->OK:Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

    new-instance v7, Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

    const-string v9, "CANCEL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;->CANCEL:Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

    new-instance v9, Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

    const-string v11, "GO_TO_CHANNEL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;->GO_TO_CHANNEL:Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;->$VALUES:[Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 812
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 812
    const-class v0, Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

    return-object p0
.end method

.method public static values()[Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;
    .locals 1

    .line 812
    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;->$VALUES:[Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

    invoke-virtual {v0}, [Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;

    return-object v0
.end method
