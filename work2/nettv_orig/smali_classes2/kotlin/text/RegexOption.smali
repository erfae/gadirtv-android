.class public final enum Lkotlin/text/RegexOption;
.super Ljava/lang/Enum;
.source "Regex.kt"

# interfaces
.implements Lkotlin/text/FlagEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/text/RegexOption;",
        ">;",
        "Lkotlin/text/FlagEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u0019\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0006R\u0014\u0010\u0005\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlin/text/RegexOption;",
        "",
        "Lkotlin/text/FlagEnum;",
        "value",
        "",
        "mask",
        "(Ljava/lang/String;III)V",
        "getMask",
        "()I",
        "getValue",
        "IGNORE_CASE",
        "MULTILINE",
        "LITERAL",
        "UNIX_LINES",
        "COMMENTS",
        "DOT_MATCHES_ALL",
        "CANON_EQ",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/text/RegexOption;

.field public static final enum CANON_EQ:Lkotlin/text/RegexOption;

.field public static final enum COMMENTS:Lkotlin/text/RegexOption;

.field public static final enum DOT_MATCHES_ALL:Lkotlin/text/RegexOption;

.field public static final enum IGNORE_CASE:Lkotlin/text/RegexOption;

.field public static final enum LITERAL:Lkotlin/text/RegexOption;

.field public static final enum MULTILINE:Lkotlin/text/RegexOption;

.field public static final enum UNIX_LINES:Lkotlin/text/RegexOption;


# instance fields
.field private final mask:I

.field private final value:I


# direct methods
.method private static final synthetic $values()[Lkotlin/text/RegexOption;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lkotlin/text/RegexOption;

    sget-object v1, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/RegexOption;->MULTILINE:Lkotlin/text/RegexOption;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/RegexOption;->LITERAL:Lkotlin/text/RegexOption;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/RegexOption;->UNIX_LINES:Lkotlin/text/RegexOption;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/RegexOption;->COMMENTS:Lkotlin/text/RegexOption;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/RegexOption;->DOT_MATCHES_ALL:Lkotlin/text/RegexOption;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/RegexOption;->CANON_EQ:Lkotlin/text/RegexOption;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/text/RegexOption;

    const-string v1, "IGNORE_CASE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 2
    invoke-direct {v0, v1, v2, v3, v3}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;III)V

    .line 3
    sput-object v0, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    .line 4
    new-instance v0, Lkotlin/text/RegexOption;

    const/16 v1, 0x8

    const-string v2, "MULTILINE"

    const/4 v4, 0x1

    .line 5
    invoke-direct {v0, v2, v4, v1, v1}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;III)V

    .line 6
    sput-object v0, Lkotlin/text/RegexOption;->MULTILINE:Lkotlin/text/RegexOption;

    .line 7
    new-instance v0, Lkotlin/text/RegexOption;

    const/16 v1, 0x10

    const-string v2, "LITERAL"

    .line 8
    invoke-direct {v0, v2, v3, v1, v1}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;III)V

    .line 9
    sput-object v0, Lkotlin/text/RegexOption;->LITERAL:Lkotlin/text/RegexOption;

    .line 10
    new-instance v0, Lkotlin/text/RegexOption;

    const/4 v1, 0x3

    const-string v2, "UNIX_LINES"

    .line 11
    invoke-direct {v0, v2, v1, v4, v4}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;III)V

    .line 12
    sput-object v0, Lkotlin/text/RegexOption;->UNIX_LINES:Lkotlin/text/RegexOption;

    .line 13
    new-instance v0, Lkotlin/text/RegexOption;

    const-string v1, "COMMENTS"

    const/4 v2, 0x4

    .line 14
    invoke-direct {v0, v1, v2, v2, v2}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;III)V

    .line 15
    sput-object v0, Lkotlin/text/RegexOption;->COMMENTS:Lkotlin/text/RegexOption;

    .line 16
    new-instance v0, Lkotlin/text/RegexOption;

    const/4 v1, 0x5

    const/16 v2, 0x20

    const-string v3, "DOT_MATCHES_ALL"

    .line 17
    invoke-direct {v0, v3, v1, v2, v2}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;III)V

    .line 18
    sput-object v0, Lkotlin/text/RegexOption;->DOT_MATCHES_ALL:Lkotlin/text/RegexOption;

    .line 19
    new-instance v0, Lkotlin/text/RegexOption;

    const/4 v1, 0x6

    const/16 v2, 0x80

    const-string v3, "CANON_EQ"

    .line 20
    invoke-direct {v0, v3, v1, v2, v2}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;III)V

    .line 21
    sput-object v0, Lkotlin/text/RegexOption;->CANON_EQ:Lkotlin/text/RegexOption;

    invoke-static {}, Lkotlin/text/RegexOption;->$values()[Lkotlin/text/RegexOption;

    move-result-object v0

    sput-object v0, Lkotlin/text/RegexOption;->$VALUES:[Lkotlin/text/RegexOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lkotlin/text/RegexOption;->value:I

    iput p4, p0, Lkotlin/text/RegexOption;->mask:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/text/RegexOption;
    .locals 1

    const-class v0, Lkotlin/text/RegexOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/text/RegexOption;

    return-object p0
.end method

.method public static values()[Lkotlin/text/RegexOption;
    .locals 1

    sget-object v0, Lkotlin/text/RegexOption;->$VALUES:[Lkotlin/text/RegexOption;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/text/RegexOption;

    return-object v0
.end method


# virtual methods
.method public getMask()I
    .locals 1

    iget v0, p0, Lkotlin/text/RegexOption;->mask:I

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lkotlin/text/RegexOption;->value:I

    return v0
.end method
