.class Lcom/thebuzzmedia/sjxp/XMLParser$1;
.super Ljava/lang/Object;
.source "XMLParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thebuzzmedia/sjxp/XMLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$thebuzzmedia$sjxp$rule$IRule$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 484
    invoke-static {}, Lcom/thebuzzmedia/sjxp/rule/IRule$Type;->values()[Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/thebuzzmedia/sjxp/XMLParser$1;->$SwitchMap$com$thebuzzmedia$sjxp$rule$IRule$Type:[I

    :try_start_0
    sget-object v1, Lcom/thebuzzmedia/sjxp/rule/IRule$Type;->TAG:Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

    invoke-virtual {v1}, Lcom/thebuzzmedia/sjxp/rule/IRule$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/thebuzzmedia/sjxp/XMLParser$1;->$SwitchMap$com$thebuzzmedia$sjxp$rule$IRule$Type:[I

    sget-object v1, Lcom/thebuzzmedia/sjxp/rule/IRule$Type;->ATTRIBUTE:Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

    invoke-virtual {v1}, Lcom/thebuzzmedia/sjxp/rule/IRule$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/thebuzzmedia/sjxp/XMLParser$1;->$SwitchMap$com$thebuzzmedia$sjxp$rule$IRule$Type:[I

    sget-object v1, Lcom/thebuzzmedia/sjxp/rule/IRule$Type;->CHARACTER:Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

    invoke-virtual {v1}, Lcom/thebuzzmedia/sjxp/rule/IRule$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
