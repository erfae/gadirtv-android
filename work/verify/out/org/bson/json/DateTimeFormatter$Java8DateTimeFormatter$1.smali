.class Lorg/bson/json/DateTimeFormatter$Java8DateTimeFormatter$1;
.super Ljava/lang/Object;
.source "DateTimeFormatter.java"

# interfaces
.implements Ljava/time/temporal/TemporalQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bson/json/DateTimeFormatter$Java8DateTimeFormatter;->parse(Ljava/lang/String;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/time/temporal/TemporalQuery<",
        "Ljava/time/Instant;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/bson/json/DateTimeFormatter$Java8DateTimeFormatter$1;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;
    .registers 2

    .line 2
    invoke-static {p1}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p1

    return-object p1
.end method
